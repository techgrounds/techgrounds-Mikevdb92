param appGwBackendPoolAdress string
param adminUsername string
@secure()
param adminPassword string
param instanceCount string
param location string
param nsgVmssWebId string
param serverName string
param subnetWebId string
param virtualMachineSize string

var apacheInstallScript = loadFileAsBase64('../scripts/apacheInstall.sh')

resource vmssWeb 'Microsoft.Compute/virtualMachineScaleSets@2023-09-01' = {
  name: 'vmss-${serverName}'
  location: location
  sku: {
    name: virtualMachineSize
    tier: 'Standard'
    capacity: int(instanceCount)
  }
  properties: {
    automaticRepairsPolicy: {
      enabled: true
      gracePeriod: 'PT10M'
    }
    overprovision: true
    platformFaultDomainCount: 1
    singlePlacementGroup: true
    upgradePolicy: {
      mode: 'Automatic'
    }
    virtualMachineProfile: {
      userData: apacheInstallScript
      storageProfile: {
        osDisk: {
          caching: 'ReadWrite'
          createOption: 'fromImage'
          osType: 'Linux'
          managedDisk: {
            storageAccountType: 'Standard_LRS'
          }
        }
        imageReference: {
          offer: '0001-com-ubuntu-server-focal'
          publisher: 'canonical'
          sku: '20_04-lts-gen2'
          version: 'latest'
        }
      }
      osProfile: {
        adminPassword: adminPassword
        adminUsername: adminUsername
        computerNamePrefix: 'vmss-web'
        linuxConfiguration: {
          disablePasswordAuthentication: false
          provisionVMAgent: true
        }
      }
      networkProfile: {
        networkInterfaceConfigurations: [
          {
            name: 'vmssInterface'
            properties: {
              networkSecurityGroup: {
                id: nsgVmssWebId
              }
              enableAcceleratedNetworking: false
              enableIPForwarding: false
              primary: true
              ipConfigurations: [
                {
                  name: 'vmssIpConfig'
                  properties: {
                    privateIPAddressVersion: 'IPv4'
                    subnet: {
                      id: subnetWebId // backend subnet
                    }
                    applicationGatewayBackendAddressPools: [
                      {
                        id: appGwBackendPoolAdress
                      }
                    ]
                  }
                }
              ]
            }
          }
        ]
      }
      extensionProfile: {
        extensions: [
          {
            name: 'healthcheck'
            properties: {
              autoUpgradeMinorVersion: true
              enableAutomaticUpgrade: false
              publisher: 'Microsoft.ManagedServices'
              settings: {
                port: 80
                protocol: 'http'
                requestPath: '/'
              }
              type: 'ApplicationHealthLinux'
              typeHandlerVersion: '1.0'
            }
          }
        ]
      }
    }
  }
  zones:[
    '1'
  ]
  tags: {
    serverType: serverName
  }
}

resource autoscaling 'Microsoft.Insights/autoscalesettings@2022-10-01' = {
  name: 'autoscaleSettings-${serverName}'
  location: location
  properties: {
    enabled: true
    profiles: [
      {
        name: 'autoscaleSettings'
        capacity: {
          default: '1'
          maximum: '3'
          minimum: '1'
        }
        rules: [
          {
            // scale out rules
            metricTrigger: {
              metricName: 'Percentage CPU'
              dividePerInstance: false
              metricNamespace: ''
              metricResourceUri: vmssWeb.id
              operator: 'GreaterThan'
              statistic: 'Average'
              threshold: 75
              timeAggregation: 'Average'
              timeGrain: 'PT1M'
              timeWindow: 'PT10M'
            }
            scaleAction: {
              cooldown: 'PT1M'
              direction: 'Increase'
              type: 'ChangeCount'
              value: '1'
            }
          }
          {
            // scale in rules
            metricTrigger: {
              dividePerInstance: false
              metricName: 'Percentage CPU'
              metricResourceUri: vmssWeb.id
              operator: 'LessThan'
              statistic: 'Average'
              threshold: 25
              timeAggregation: 'Average'
              timeGrain: 'PT1M'
              timeWindow: 'PT10M'
            }
            scaleAction: {
              cooldown: 'PT1M'
              direction: 'Decrease'
              type: 'ChangeCount'
              value: '1'
            }
          }
        ]
      }
    ]
    predictiveAutoscalePolicy:{
      scaleMode: 'Disabled'
      scaleLookAheadTime:'PT15M'
    }
    targetResourceUri: vmssWeb.id
  }
  tags: {
    serverType: serverName
  }
}
