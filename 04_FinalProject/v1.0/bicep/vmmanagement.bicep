param location string
param virtualMachineSize string
param adminUsername string
param nsgId string
param subnetId string

resource networkInterfaceManagement 'Microsoft.Network/networkInterfaces@2022-11-01' = {
  name: 'nic-management'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipConfig-management'
        properties: {
          subnet: {
            id: subnetId
          }
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIpManagement.id
            // properties: {
            //   deleteOption:'Delete'  
            // }
          }
        }
      }
    ]
    networkSecurityGroup: {
      id: nsgId
    }
  }
}

resource publicIpManagement 'Microsoft.Network/publicIpAddresses@2020-08-01' = {
  name: 'publicIp-management'
  location: location
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
  }
  sku: {
    name: 'Standard'
  }
  zones: [ // Region zone 2
    '2'
  ]
}

resource virtualMachineManagement 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: 'vm-management'
  location: location
  properties: {
    hardwareProfile: {
      vmSize: virtualMachineSize
    }
    storageProfile: {
      osDisk: {
        name: 'OsDisk-vmManagement'
        createOption: 'fromImage'
        managedDisk: {
          storageAccountType: 'StandardSSD_LRS'
        }
        deleteOption: 'Delete'
      }
      imageReference: {
        publisher: 'MicrosoftWindowsDesktop'
        offer: 'Windows-10'
        sku: 'win10-22h2-pro-g2'
        version: 'latest'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaceManagement.id
        }
      ]
    }
    additionalCapabilities: {
      hibernationEnabled: false
    }
    osProfile: {
      computerName: 'vmmanagement'
      adminUsername: adminUsername
      adminPassword: 'Test123!'
      windowsConfiguration: {
        enableAutomaticUpdates: true
        provisionVMAgent: true
        patchSettings: {
          enableHotpatching: false
          patchMode: 'AutomaticByOS'
        }
      }
    }
    licenseType: 'Windows_Client'
    securityProfile: {
      securityType: 'TrustedLaunch'
      uefiSettings: {
        secureBootEnabled: true
        vTpmEnabled: true
      }
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
      }
    }
  }

  zones: [
    '2'
  ]
}

// output adminUsername string = adminUsername

