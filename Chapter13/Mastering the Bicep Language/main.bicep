param location string = 'westus'
param storageAccountName string = uniqueString(resourceGroup().id)

module storageModule './storageAccount.bicep' = {
  name: 'storageDeploy'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
output storageAccountId string = storageModule.outputs.storageAccountId
