targetScope = 'subscription'

param resourceGroupName string = 'myResourceGroup'
param location string = 'West Europe'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}

output resourceGroupName string = resourceGroup.name
