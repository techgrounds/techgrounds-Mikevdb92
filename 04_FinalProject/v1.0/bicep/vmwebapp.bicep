param location string
param virtualMachineSize string
param adminUsername string
param nsgId string
param subnetId string
var apacheInstallScript = loadFileAsBase64('./apacheInstall.sh')
var adminPasswordOrKey = 'Test123!'
param authenticationType string = 'password'
// param keyID string

var linuxConfiguration = {
  disablePasswordAuthentication: true
  ssh: {
    publicKeys: [
      {
        path: '/home/${adminUsername}/.ssh/authorized_keys'
        keyData: adminPasswordOrKey
      }
    ]
  }
}

resource networkInterfaceWebapp 'Microsoft.Network/networkInterfaces@2022-11-01' = {
  name: 'nic-webapp'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipConfig-webapp'
        properties: {
          subnet: {
            id: subnetId
          }
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIpWeb.id
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

resource publicIpWeb 'Microsoft.Network/publicIpAddresses@2020-08-01' = {
  name: 'publicIp-webapp'
  location: location
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
  }
  sku: {
    name: 'Standard'
  }
  zones: [// Region zone 1
    '1'
  ]
}

resource virtualMachineWeb 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: 'vm-webapp'
  location: location
  properties: {
    userData: apacheInstallScript
    hardwareProfile: {
      vmSize: virtualMachineSize
    }
    storageProfile: {
      osDisk: {
        name: 'OsDisk-vmWebapp'
        createOption: 'fromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Standard_LRS'
        }
        deleteOption: 'Delete'
      }
      imageReference: {
        publisher: 'canonical'
        offer: '0001-com-ubuntu-server-focal'
        sku: '20_04-lts-gen2'
        version: 'latest'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaceWebapp.id
          // properties: {
          // deleteOption: nicDeleteOption
          // }
        }
      ]
    }
    additionalCapabilities: {
      hibernationEnabled: false
    }
    osProfile: {
      computerName: 'vmwebapp'
      adminUsername: adminUsername
      adminPassword: adminPasswordOrKey
      linuxConfiguration: ((authenticationType == 'password') ? null : linuxConfiguration)
      // {
      //   disablePasswordAuthentication: false
      //   patchSettings: {
      //     patchMode: 'ImageDefault'
      //   }
      // }
    }
    // diagnosticsProfile: {
    //   bootDiagnostics: {
    //     enabled: true
    //   }
    // }
  }
}

// output adminUsername string = adminUsername


