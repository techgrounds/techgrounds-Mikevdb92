param location string

@minLength(3)
@maxLength(23)
param storageAccountname string =  'strgacc${toLower(uniqueString(resourceGroup().id))}'

//* Create a storage account
resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountname
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Cool'
    allowBlobPublicAccess: true
    allowSharedKeyAccess: true
    supportsHttpsTrafficOnly: true
    // encryption:{
    //   services:{
    //     file:{
    //       enabled:true
    //     }
    //     blob:{
    //       enabled:true
    //     }
    //   }
    //   keySource:'Microsoft.Keyvault'
    // }
    networkAcls:{
      defaultAction: 'Deny'
      bypass:'AzureServices'
    }
  }
}


//* Create storage container for post deployment scripts
resource blobContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' = {
  name: '${(storageAccount.name)}/default/${'scripts'}'
  properties: {
    publicAccess: 'None'
  }
}
