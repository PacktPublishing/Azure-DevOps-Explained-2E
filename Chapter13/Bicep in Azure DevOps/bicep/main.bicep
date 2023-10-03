param applicaticaionInsightsName string
param keyVaultName string
param appServicePlanName string
param location string

module landingZone 'modules/ladningZone.bicep' = {
  name: 'landingZone-${replace(location, ' ', '')}'
  params: {
    applicaticaionInsightsName: applicaticaionInsightsName
    keyVaultName: keyVaultName
    appServicePlanName: appServicePlanName
    location: location
  }
}
