param storageCount int = 5
param location string = resourceGroup().location
var baseName = 'mystorage${uniqueString(resourceGroup().id)}'

resource storageAccounts 'Microsoft.Storage/storageAccounts@2022-09-01' = [for i in range(0, storageCount): {
  name: '${baseName}${i}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}]
