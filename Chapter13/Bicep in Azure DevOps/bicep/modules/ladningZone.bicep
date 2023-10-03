param applicaticaionInsightsName string
param keyVaultName string
param appServicePlanName string
param skuName string = 'F1'
param skuTier string = 'Free'
param location string

resource appInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: applicaticaionInsightsName
  location: location
  tags: {
    environment: 'production'
    department: 'IT'
  }
  kind: 'web'
  properties: {
    Application_Type: 'web'
    DisableIpMasking: false
    RetentionInDays: 30
  }
}

resource keyVault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: subscription().tenantId
    accessPolicies: []
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2021-01-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: skuName
    tier: skuTier
  }
  properties: {
    perSiteScaling: false
    maximumElasticWorkerCount: 1
  }
}
