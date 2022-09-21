@description('The name of the SQL logical server.')
param serverName string = 'sql-${sqlDBName}-${uniqueString('sql', resourceGroup().id)}'

@description('The name of the SQL Database.')
param sqlDBName string = 'Microsoft.eShopOnContainers.Services.CatalogDb'

@description('Location for all resources.')
param location string = resourceGroup().location

@description('The administrator username of the SQL logical server.')
param administratorLogin string

@description('The administrator password of the SQL logical server.')
@secure()
param administratorLoginPassword string

resource sqlServer 'Microsoft.Sql/servers@2022-02-01-preview' = {
  name: serverName
  location: location
  properties: {
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
    publicNetworkAccess: 'Enabled'
  }
  
  resource fwRules 'firewallRules' = {
    name: 'AllowAllWindowsAzureIps'
  }
}

resource sqlDB 'Microsoft.Sql/servers/databases@2022-02-01-preview' = {
  parent: sqlServer
  name: sqlDBName
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}
