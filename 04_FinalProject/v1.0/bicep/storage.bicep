param location string = resourceGroup().location
param storageName string

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties:{
    supportsHttpsTrafficOnly: true
    encryption:{
      services:{
        file:{
          enabled:true
        }
        blob:{
          enabled:true
        }
      }
      keySource:'Microsoft.Storage'
    }
    networkAcls:{
      defaultAction: 'Deny'
      bypass:'AzureServices'
    }
  }
}

resource storageContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' ={
  name: '${(storageAccount.name)}/default/${'blobcontainer'}'
  properties:{
    publicAccess:'None'
  }
}
