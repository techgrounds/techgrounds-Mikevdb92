param location string
param serverName string
param trustedIp string

//* Nsg Man server
resource nsgVmMan 'Microsoft.Network/networkSecurityGroups@2023-09-01' = {
  name: 'nsgVm-${serverName}'
  location: location
  properties: {
    securityRules: [
      {
        name: 'allowRdp'
        properties: {
          access: 'Allow'
          destinationAddressPrefix: '*'
          destinationPortRange: '3389'
          direction: 'Inbound'
          priority: 100
          protocol: 'Tcp'
          sourceAddressPrefix: trustedIp
          sourcePortRange: '*'
        }
      }
    ]
  }
  tags: {
    serverType: serverName
  }
}

//* Closed nsg
resource nsg2Man 'Microsoft.Network/networkSecurityGroups@2023-09-01' = {
  name: 'nsg2-${serverName}'
  location: location
  properties: {
    securityRules: []
  }
  tags: {
    serverType: serverName
  }
}

output nsg2ManId string = nsg2Man.id
output nsg2ManName string = nsg2Man.name
output nsgVmManId string = nsgVmMan.id
output nsgVmManName string = nsgVmMan.name


