param location string
param tenantID string = subscription().tenantId
param objectID string
param keyVaultName string


@secure()
param password string

//* Var
var kvName = '${keyVaultName}-${uniqueString(resourceGroup().id)}'
var adminPasswordName = 'adminPassword'

//* Deployment of the key vault
resource keyVault 'Microsoft.KeyVault/vaults@2023-07-01' = {
  name: kvName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: tenantID
    enableSoftDelete:true
    enabledForDeployment:true         // VMs can retrieve certificates
    enabledForDiskEncryption: true    // Disk encryption enabled
    enabledForTemplateDeployment:true // ARM can retrieve values
    softDeleteRetentionInDays: 7
    createMode:'default'              // Creating or updating the key vault (not recovering)
    enableRbacAuthorization:false     // Using Acces Policies 
    
    accessPolicies:[
      {
        tenantId: tenantID
        objectId: objectID
        permissions: {
          keys:[
            'all'
          ]
          secrets:[
            'all'
          ]
          certificates:[
            'all'
          ]
        }
      }
    ]
  }
}

// resource adminPassword 'Microsoft.KeyVault/vaults/secrets@2023-07-01' = {
//   name: adminPasswordName
//   properties: {
//     value: password
//   }
// }
