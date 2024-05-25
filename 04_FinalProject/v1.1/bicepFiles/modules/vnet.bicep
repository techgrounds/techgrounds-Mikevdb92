param location string
param nsg1Id string
param nsg2Id string
param serverName string
param subnetAdressPrefix array
param vnetAdressPrefixes string

//* create virtual network
resource vnet 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: 'vnet-${serverName}'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnetAdressPrefixes
      ]
    }
  }
  tags: {
    serverType: serverName
  }
}

//* create first subnet
resource subnet1 'Microsoft.Network/virtualNetworks/subnets@2023-09-01' = {
  name: 'subnet1-${serverName}'
  parent: vnet
  properties:{
    addressPrefix:subnetAdressPrefix[0]
    networkSecurityGroup:{
      id: nsg1Id
    }
  }
}

//* create second subnet
resource subnet2 'Microsoft.Network/virtualNetworks/subnets@2023-09-01' = {
  name: 'subnet2-${serverName}'
  parent: vnet
  properties:{
    addressPrefix:subnetAdressPrefix[1]
    networkSecurityGroup:{
      id: nsg2Id
    }
  }
  dependsOn:[
    subnet1
  ]
}

output vnetName string = vnet.name
output vnetId string = vnet.id
output subnet1Id string = subnet1.id
output subnet2Id string = subnet2.id
