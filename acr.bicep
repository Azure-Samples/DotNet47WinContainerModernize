@description('Specifies the location for all resources.')
param location string = resourceGroup().location

param nameseed string = 'eshop'

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2022-02-01-preview' = {
  name: 'cr${nameseed}${uniqueString(resourceGroup().id, location)}'
  location: location
  sku: {
    name: 'Standard'
  }
  properties: {
    adminUserEnabled: true 
  }
}

output id string = containerRegistry.id
output name string = containerRegistry.name
output loginServer string = containerRegistry.properties.loginServer
