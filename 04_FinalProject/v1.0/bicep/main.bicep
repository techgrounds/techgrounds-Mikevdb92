// * Global params
param location string = resourceGroup().location

// * Web server Virtual network params
param vnetNameWeb string = 'vnet-webapp'
var nsg1IdWeb = vnetWebserver.outputs.nsg1Id
var subnetIdWeb = vnetWebserver.outputs.subnetId

//! Always upload with an empty string 
@description('Trusted IP adress.')
param trustedIp string = ''

//* Nsg settings needed for allowing trafic
//todo Make it possible to choise multiple rules is needed.



// @description('Different choises for the nsg security rules.')
// var nsgSettings = {
//   webappHttp: {
//     name: 'HTTPS-rule'
//     properties: {
//       access: 'Allow'
//       direction: 'Inbound'
//       priority: 100
//       protocol: 'TCP'
//       sourcePortRange: '*'
//       sourceAddressPrefix: '*'
//       destinationPortRange: '443'
//       destinationAddressPrefix: '*'
//     }
//   }, webappHttps: {
//     name: 'HTTP-rule'
//     properties: {
//       access: 'Allow'
//       direction: 'Inbound'
//       priority: 200
//       protocol: 'TCP'
//       sourcePortRange: '*'
//       sourceAddressPrefix: '*'
//       destinationPortRange: '80'
//       destinationAddressPrefix: '*'
//     }
//   }, webappSsh: {
//     name: 'SSH-rule'
//     properties: {
//       protocol: 'TCP'
//       sourceAddressPrefix: '*'
//       destinationAddressPrefix: '*'
//       sourcePortRange: '*'
//       destinationPortRange: '22'
//       access: 'Allow'
//       priority: 300
//       direction: 'Inbound'
//     }
//   }, management: {
//     name: 'RDP-rule'
//     properties: {
//       protocol: 'TCP'
//       sourceAddressPrefix: '${trustedIp}/32'
//       destinationAddressPrefix: '*'
//       sourcePortRange: '*'
//       destinationPortRange: '3389'
//       access: 'Allow'
//       priority: 500
//       direction: 'Inbound'
//     }
//   }
// }

// * Management server Virtual network params
param vnetNameManagement string = 'vnet-managment'
var nsg1IdManagement = vnetManagementServer.outputs.nsg1Id
var subnetIdManagement = vnetManagementServer.outputs.subnetId

// * Virtual machine params
//todo @secure() + store in vault?
@description('This is the admin username.')
param adminUsername string = 'Admin-Mvdb'

// * Storage Account params
@minLength(3)
@maxLength(24)
param storageAccountName string = 'strgacc${uniqueString(resourceGroup().id)}'

// * Keyvault and secrets params
@description('This is the key vault name.')
param keyVaultName string = 'kv-${uniqueString(resourceGroup().id)}'
@description('Enter your user object ID.')
param objectid string = '45367586-c9f1-40bb-8619-4ba218d28228'
@description('Enter your user tenant ID.')
param tenantID string = 'de60b253-74bd-4365-b598-b9e55a2b208d'
// var keyID = keyvault.outputs.keyID

// * Admin password input during deploymment
@description('Enter a password.')
@secure()
param password string

//* Recovery service vault params
param rsvName string = 'RecsVault-${uniqueString(resourceGroup().id)}'
param policyName string = 'backupPolicy'
param timeZone string = '2024-02-08T02:00:00Z'

//* Key ID
// var keyID = keyvault.outputs.keyID

//* Create a keyvault
module keyvault 'keyvault.bicep' = {
  name: keyVaultName
  params: {
    location: location
    keyVaultName: keyVaultName
    objectid: objectid
    pass: password
    tenantid: tenantID
  }
}

//* Create a storage account
resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: true
    allowSharedKeyAccess: true
    publicNetworkAccess: 'Enabled'
    supportsHttpsTrafficOnly: true
  }

  resource blobService 'blobServices@2023-01-01' = {
    name: 'default'
    properties: {
      changeFeed: {
        enabled: true
      }
      containerDeleteRetentionPolicy: {
        enabled: true
        days: 7
      }
      deleteRetentionPolicy: {
        allowPermanentDelete: false
        enabled: true
        days: 7
      }
      isVersioningEnabled: true
    }
  }
}

//* Create storage container
resource storageContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' = {
  name: '${(storageAccount.name)}/default/${'blobcontainer'}'
  properties: {
    publicAccess: 'None'
  }
}

//* Create the webapp vnet
module vnetWebserver 'vnet.bicep' = {
  name: vnetNameWeb
  params: {
    adressPrefix: '10.10.10.0/24'
    location: location
    nsgName1: 'nsg-webapp'
    subnetName1: 'subnet-webapp'
    vnetName: vnetNameWeb
    subnetPrefix1: '10.10.10.0/24'
    trustedIp:trustedIp
  }
  dependsOn:[
    keyvault
  ]
}

//* create the management vnet
module vnetManagementServer 'vnet.bicep' = {
  name: vnetNameManagement
  params: {
    adressPrefix: '10.20.20.0/24'
    location: location
    nsgName1: 'nsg-managment'
    subnetName1: 'subnet-managment'
    vnetName: 'vnet-managment'
    subnetPrefix1: '10.20.20.0/24'
    trustedIp:trustedIp
  }
}
// var vnetIdmanagement = vnetManagementServer.outputs.virtualNetworkId
// var vnetIdWebapp = vnetWebserver.outputs.virtualNetworkId

//* Peering vnets
module vnetPeeringManagementWebapp 'peering.bicep' = {
  name: 'vnetPeeringManagementWebapp'
  params: {
    // location: location
    vnetNameManagement: vnetNameManagement
    vnetNameWebapp: vnetNameWeb
  }
  dependsOn: [
    vnetWebserver, vnetManagementServer
  ]
}

// * VM Web server 
// This module also deploys a networkInterface and a pubIp
module virtualMachineWebServer './vmwebapp.bicep' = {
  name: 'vm-webapp'
  params: {
    subnetId: subnetIdWeb
    location: location
    adminUsername: adminUsername
    nsgId: nsg1IdWeb
    virtualMachineSize: 'Standard_B1s'
    // keyID:keyID
  }
  dependsOn: [
    vnetWebserver //nsg
  ]
}

//* VM Management server
// This module also deploys a networkInterface and a pubIp
module virtualMachineManagement 'vmmanagement.bicep' = {
  name: 'vm-management'
  params: {
    adminUsername: adminUsername
    location: location
    nsgId: nsg1IdManagement
    subnetId: subnetIdManagement
    virtualMachineSize: 'Standard_B1s'
  }
}


//* Recovery Service Vault
module recoveryServiceVault 'recoveryServiceVault.bicep' = {
  name: rsvName
  params:{
    name: rsvName
    location: location
    policyName: policyName
    timeZone: timeZone
  }
}
