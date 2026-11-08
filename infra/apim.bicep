param publisherEmail string
param location string = resourceGroup().location

resource apim 'Microsoft.ApiManagement/service@2024-05-01' = {
  name: 'apim-payment-${uniqueString(resourceGroup().id)}'
  location: location

  sku: {
    name: 'Consumption'
    capacity: 0
  }

  properties: {
    publisherEmail: publisherEmail
    publisherName: 'Payment API Lab'
  }
}

output apimName string = apim.name
