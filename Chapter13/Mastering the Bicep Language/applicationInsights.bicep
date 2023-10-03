param location string = 'West Europe'

resource appInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: 'AppInsightsName'
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
