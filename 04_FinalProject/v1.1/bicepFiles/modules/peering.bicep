param vnetNameMan string
param vnetNameWeb string


//todo use id instead of resource
resource vnetWeb 'Microsoft.Network/virtualNetworks@2023-06-01' existing = {
  name: vnetNameWeb
}

resource vnetMan 'Microsoft.Network/virtualNetworks@2023-06-01' existing = {
  name: vnetNameMan
}

resource vnetPeeringWebtoMan 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2023-06-01' = {
  parent: vnetWeb
  name: '${vnetNameWeb}-${vnetNameMan}'
  properties: {
    remoteVirtualNetwork: {
      id: vnetMan.id
    }
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: false
    allowGatewayTransit: false
    useRemoteGateways: false
  }
}

resource vnetPeeringMantoWeb 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2023-06-01' = {
  parent: vnetMan
  name: '${vnetNameMan}-${vnetNameWeb}'
  properties: {
    remoteVirtualNetwork: {
      id: vnetWeb.id
    }
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: false
    allowGatewayTransit: false
    useRemoteGateways: false
  }
}
