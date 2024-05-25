@secure()
param adminPasswordOrKey string
param adminUsername string
param instanceCount string
param location string = resourceGroup().location
param serverName array
param subnetAdressPrefixMan array
param subnetAdressPrefixWeb array
param trustedIp string
param virtualMachineSize string
param vmStaticIpVmMan string
param vnetAdressPrefixesMan string
param vnetAdressPrefixesWeb string

var appGwBackendPoolAdress = appGatewayWeb.outputs.appGwBackendPoolAdress
var nsg2ManId = nsgMan.outputs.nsg2ManId
var nsgAppGwIdWeb = nsgWeb.outputs.nsgAppGwWebId
var nsgVmManId = nsgMan.outputs.nsgVmManId
var nsgVmmsWebId = nsgWeb.outputs.nsgVmmsWebId
var subnetAppGwId = vnetWeb.outputs.subnet2Id
var subnetVmManId = vnetMan.outputs.subnet1Id
var subnetVmmsWebId = vnetWeb.outputs.subnet1Id
var vmManId = vmMan.outputs.vmManId
var vmManName = vmMan.outputs.vmManName
var vnetNameMan = vnetMan.outputs.vnetName
var vnetNameWeb = vnetWeb.outputs.vnetName

//? Activate for vault deployment
param keyvaultName string
param objectID string

module keyvault 'modules/keyvault.bicep' = {
  name: keyvaultName
  params: {
    keyVaultName: keyvaultName
    location: location
    objectID: objectID
    password: adminPasswordOrKey
  }
}

module storageAccount 'modules/storage.bicep' = {
  name: 'storageAccount'
  params: {
    location: location
  }
}

module nsgWeb 'modules/nsgWeb.bicep' = {
  name: 'nsgWeb'
  params: {
    location: location
    serverName: serverName[0]
    vmStaticIpMan: vmStaticIpVmMan
  }
}

module nsgMan 'modules/nsgMan.bicep' = {
  name: 'nsgManagement'
  params: {
    location: location
    serverName: serverName[1]
    trustedIp: trustedIp
  }
}

module vnetWeb 'modules/vnet.bicep' = {
  name: 'vnetWeb'
  params: {
    location: location
    nsg1Id: nsgVmmsWebId
    nsg2Id: nsgAppGwIdWeb
    serverName: serverName[0]
    subnetAdressPrefix: subnetAdressPrefixWeb
    vnetAdressPrefixes: vnetAdressPrefixesWeb
  }
}

module vnetMan 'modules/vnet.bicep' = {
  name: 'vnetManagement'
  params: {
    location: location
    nsg1Id: nsgVmManId
    nsg2Id: nsg2ManId
    serverName: serverName[1]
    subnetAdressPrefix: subnetAdressPrefixMan
    vnetAdressPrefixes: vnetAdressPrefixesMan
  }
}

module peering 'modules/peering.bicep' = {
  name: 'peering'
  params: {
    vnetNameMan: vnetNameMan
    vnetNameWeb: vnetNameWeb
  }
  dependsOn:[
    nsgMan, nsgWeb
  ]
}

module vmMan 'modules/vmmanagement.bicep' = {
  name: 'vmManagement'
  params: {
    adminPassword: adminPasswordOrKey
    adminUsername: adminUsername
    location: location
    nsgId: nsgVmManId
    serverName:serverName[1]
    staticIp: vmStaticIpVmMan
    subnetId: subnetVmManId
    virtualMachineSize: virtualMachineSize
  }
  dependsOn:[
    vnetMan
  ]
}

module appGatewayWeb 'modules/appGateway.bicep' = {
  name: 'appGwWeb'
  params:{
    location: location
    serverName:  serverName[0]
    subnetAppGwId: subnetAppGwId
  }
}


module vmssWeb 'modules/vmssWeb.bicep' = {
  name: 'vmmsWeb'
  params: {
    adminUsername: adminUsername
    adminPassword: adminPasswordOrKey
    appGwBackendPoolAdress: appGwBackendPoolAdress
    instanceCount: instanceCount
    location: location
    nsgVmssWebId: nsgVmmsWebId
    serverName:serverName[0]
    subnetWebId: subnetVmmsWebId
    virtualMachineSize: virtualMachineSize
  }
  dependsOn:[
    appGatewayWeb
  ]
}

module recoveryService 'modules/recoveryvault.bicep' = {
  name: 'recoveryService'
  params: {
    location: location
    vmManId: vmManId
    vmManName: vmManName
  }
  dependsOn:[
    vmMan
  ]
}

// module sqlDb 'modules/sqldb.bicep' = {
//   name: 'sqlDbWeb'
//   params: {
//     adminPassword: adminPasswordOrKey
//     adminUsername: adminUsername
//     location: location
//     serverName: serverName[1]
//   }
// }
