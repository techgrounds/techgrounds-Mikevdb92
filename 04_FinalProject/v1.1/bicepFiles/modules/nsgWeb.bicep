param location string
param serverName string
param vmStaticIpMan string

//* Nsg Web server
resource nsgVmssWeb 'Microsoft.Network/networkSecurityGroups@2023-09-01' = {
  name: 'nsgVmss-${serverName}'
  location: location
  properties: {
    securityRules: [
      {
        name: 'allowHTTPS'
        properties: {
          access: 'Allow'
          destinationAddressPrefix: '*'
          destinationPortRange: '443'
          direction: 'Inbound'
          priority: 100
          protocol: 'Tcp'
          sourceAddressPrefix: '*'
          sourcePortRange: '*'
        }
      }
      {
        name: 'allowHTTP'
        properties: {
          access: 'Allow'
          destinationAddressPrefix: '*'
          destinationPortRange: '80'
          direction: 'Inbound'
          priority: 200
          protocol: 'Tcp'
          sourceAddressPrefix: '*'
          sourcePortRange: '*'
        }
      }
      {
        name: 'allowSshManagementServer'
        properties: {
          access: 'Allow'
          destinationAddressPrefix: '*'
          destinationPortRange: '22'
          direction: 'Inbound'
          priority: 300
          protocol: 'Tcp'
          sourceAddressPrefix: vmStaticIpMan //static ip of management server
          sourcePortRange: '*'
        }
      }
    ]
  }
  tags: {
    serverType: serverName
  }
}

resource nsgAppGwWeb 'Microsoft.Network/networkSecurityGroups@2023-09-01' = {
  name: 'nsgAppGw-${serverName}'
  location: location
  properties: {
    securityRules: [
      {
        name: 'AllowHTTP'
        properties: {
          access: 'Allow'
          destinationAddressPrefix: '*'
          destinationPortRange: '80'
          direction: 'Inbound'
          priority: 100
          protocol: 'Tcp'
          sourceAddressPrefix: '*'
          sourcePortRange: '*'
        }
      }
      {
        name: 'AllowHTTPS'
        properties: {
          access: 'Allow'
          destinationAddressPrefix: '*'
          destinationPortRange: '443'
          direction: 'Inbound'
          priority: 200
          protocol: 'Tcp'
          sourceAddressPrefix: '*'
          sourcePortRange: '*'
        }
      }
      {
        name: 'AllowAGPorts'
        properties: {
          access: 'Allow'
          destinationAddressPrefix: '*'
          destinationPortRange: '65200-65535'
          direction: 'Inbound'
          priority: 300
          protocol: 'Tcp'
          sourceAddressPrefix: '*'
          sourcePortRange: '*'
        }
      }
    ]
  }
  tags: {
    serverType: serverName
  }
}

output nsgVmssWebName string = nsgVmssWeb.name
output nsgAppGwWebName string = nsgAppGwWeb.name
output nsgVmmsWebId string = nsgVmssWeb.id
output nsgAppGwWebId string = nsgAppGwWeb.id


// var allRuleTemplates = [
//   {
//     key: 'ssh'
//     rule: {
//       name: 'allowSSH'
//       properties: {
//         priority: 100
//         access: 'Allow'
//         protocol: 'Tcp'
//         direction: 'Inbound'
//         sourcePortRange: '*'
//         sourceAddressPrefix: 'trustedIp'
//         destinationPortRange: '22'
//         destinationAddressPrefix: '*'
//       }
//     }
//   }
//   {
//     key: 'http'
//     rule: {
//       name: 'allowHTTP'
//       properties: {
//         priority: 200
//         access: 'Allow'
//         protocol: 'Tcp'
//         direction: 'Inbound'
//         sourcePortRange: '*'
//         sourceAddressPrefix: 'Internet'
//         destinationPortRange: '80'
//         destinationAddressPrefix: '*'
//       }
//     }
//   }
//   // Define more rules as needed (https, rdp, etc.)
// ]

