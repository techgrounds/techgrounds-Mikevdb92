param location string
param tenantid string
param objectid string
param keyVaultName string
param pass string

// @secure()
// param pass string

resource keyvault 'Microsoft.KeyVault/vaults@2023-07-01' = {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: tenantid
    enableSoftDelete:true
    enabledForDeployment:true
    softDeleteRetentionInDays: 7
    createMode:'default'
    accessPolicies: [
      {
        objectId: objectid
        tenantId: tenantid
        permissions: {
          secrets:[
            'all'
          ]
        }
      }
      {
        objectId: objectid
        tenantId: tenantid
        permissions: {
          certificates:[
            'all'
          ]
        }
      }
      {
        objectId: objectid
        tenantId: tenantid
        permissions: {
          keys:[
            'all'
          ]
        }
      }
    ]
  }
}

resource secret1 'Microsoft.KeyVault/vaults/secrets@2023-07-01' = {
  parent: keyvault
  name: 'adminpass'
  properties: {
    value: pass 
  }
}

resource key1 'Microsoft.KeyVault/vaults/keys@2023-07-01' = {
  parent:keyvault
  name: 'key1'
  properties: {
    attributes:{
      enabled:true
    }
    keySize: 2048
    kty:'RSA'
  }
}

resource keyRecovery 'Microsoft.KeyVault/vaults/keys@2023-07-01' = {
  parent:keyvault
  name: 'keyRecoveryServiceVault'
  properties: {
    attributes:{
      enabled:true
    }
    keySize: 2048
    kty:'RSA'
  }
}

// resource sshKeySecret 'Microsoft.KeyVault/vaults/secrets@2021-06-01-preview' = {
//   name: '${keyVault.name}/sshKey'
//   properties: {
//     value: sshKeyValue
//   }
// }

output keyID string = key1.id
// resource secret1 'Microsoft.KeyVault/vaults/secrets@2023-07-01' = {
//   parent:keyvault
//   name: 'adminpass'
//   properties: {
//     value: pass 
//   }
// }

// resource secret2 'Microsoft.KeyVault/vaults/secrets@2023-07-01' = {
//   parent:keyvault
//   name: 'adminpass2'
//   properties: {
//     value: 'supmate,'
//   }
// }
