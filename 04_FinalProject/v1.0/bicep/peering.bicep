param vnetNameWebapp string
param vnetNameManagement string
// param location string

resource vnetWebapp 'Microsoft.Network/virtualNetworks@2023-06-01' existing = {
  name: vnetNameWebapp
}

resource vnetManagement 'Microsoft.Network/virtualNetworks@2023-06-01' existing = {
  name: vnetNameManagement
}

resource vnetPeeringWebappManagement 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2023-06-01' = {
  parent: vnetWebapp
  name: '${vnetNameWebapp}-${vnetNameManagement}'
  properties: {
    remoteVirtualNetwork: {
      id: vnetManagement.id
    }
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: false
    allowGatewayTransit: false
    useRemoteGateways: false
  }
}

resource vnetPeeringManagementWebapp 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2023-06-01' = {
  parent: vnetManagement
  name: '${vnetNameManagement}-${vnetNameWebapp}'
  properties: {
    remoteVirtualNetwork: {
      id: vnetWebapp.id
    }
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: false
    allowGatewayTransit: false
    useRemoteGateways: false
  }
}
