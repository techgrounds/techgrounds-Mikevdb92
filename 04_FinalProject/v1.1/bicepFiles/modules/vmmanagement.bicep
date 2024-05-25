@secure()
param adminPassword string
param adminUsername string
param location string
param nsgId string
param serverName string
param staticIp string
param subnetId string
param virtualMachineSize string

//* create network interface
resource networkInterfaceManagement 'Microsoft.Network/networkInterfaces@2023-09-01' = {
  name: 'nic-${serverName}'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipConfig-${serverName}'
        properties: {
          subnet: {
            id: subnetId
          }
          privateIPAllocationMethod: 'Static'
          privateIPAddress: staticIp
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
  tags: {
    serverType: serverName
  }
}

//* Create public ip, used to connect to the management server
resource publicIpManagement 'Microsoft.Network/publicIPAddresses@2023-09-01' = {
  name: 'publicIp-${serverName}'
  location: location
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
  }
  sku: {
    name: 'Standard'
  }
  tags: {
    serverType: serverName
  }
  zones: [ // Region zone 2
    '2'
  ]
}

//* Create Management server
resource virtualMachineManagement 'Microsoft.Compute/virtualMachines@2023-09-01' = {
  name: 'vm-${serverName}'
  location: location
  properties: {
    hardwareProfile: {
      vmSize: virtualMachineSize
    }
    storageProfile: {
      osDisk: {
        name: 'osDiskVm-${serverName}'
        createOption: 'FromImage'
        managedDisk: {
          storageAccountType: 'StandardSSD_LRS'
        }
      }
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer:'WindowsServer'
        sku: '2022-datacenter-azure-edition'
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
    osProfile: {
      computerName: 'vm-${serverName}'
      adminUsername: adminUsername
      adminPassword: adminPassword
    }
  }
  tags: {
    serverType: serverName
  }
  zones: [
    '2'
  ]
}

output vmManId string = virtualMachineManagement.id
output vmManName string = virtualMachineManagement.name
