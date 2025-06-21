param location string = resourceGroup().location

// Example storage account module
module stg 'modules/storage.bicep' = {
  name: 'storageModule'
  params: {
    location: location
    storageName: 'yourstorageacct'
  }
}

// TODO: add more modules (container apps, service bus, etc)
