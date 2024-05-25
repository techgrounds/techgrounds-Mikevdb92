param location string
param vnetName string
param subnetName1 string
param adressPrefix string
param nsgName1 string
param subnetPrefix1 string
param trustedIp string

resource vnet 'Microsoft.Network/virtualNetworks@2023-06-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        adressPrefix
      ]
    }
  }
}

resource subnet1 'Microsoft.Network/virtualNetworks/subnets@2023-06-01' = {
  parent: vnet
  name: subnetName1
  // location: location
  properties: {
    addressPrefix: subnetPrefix1
    networkSecurityGroup: {
      id: nsg.id
    }
  }
}

resource nsg 'Microsoft.Network/networkSecurityGroups@2023-06-01' = if (contains(nsgName1, 'web')) {
  name: nsgName1
  location: location
  properties: {
    securityRules: [
      {
        name: 'HTTPS-rule'
        properties: {
          access: 'Allow'
          direction: 'Inbound'
          priority: 100
          protocol: 'TCP'
          sourcePortRange: '*'
          sourceAddressPrefix: '*'
          destinationPortRange: '443'
          destinationAddressPrefix: '*'
        }
      }
      {
        name: 'HTTP-rule'
        properties: {
          access: 'Allow'
          direction: 'Inbound'
          priority: 200
          protocol: 'TCP'
          sourcePortRange: '*'
          sourceAddressPrefix: '*'
          destinationPortRange: '80'
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}

resource nsg1 'Microsoft.Network/networkSecurityGroups@2023-06-01' = if (contains(nsgName1, 'man')) {
  name: nsgName1
  location: location
  properties: {
    securityRules: [
      {
        name: 'SSH-rule'
        properties: {
          protocol: 'TCP'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          sourcePortRange: '*'
          destinationPortRange: '22'
          access: 'Allow'
          priority: 300
          direction: 'Inbound'
        }
      }
      {
        name: 'RDP-rule'
        properties: {
          protocol: 'TCP'
          sourceAddressPrefix: trustedIp
          destinationAddressPrefix: '*'
          sourcePortRange: '*'
          destinationPortRange: '3389'
          access: 'Allow'
          priority: 1100
          direction: 'Inbound'
        }
      }
    ]
  }
}

output nsg1Id string = nsg.id
output virtualNetworkId string = vnet.id
output subnetId string = subnet1.id

// [for rule in securityRules: if (rule != null) rule]
