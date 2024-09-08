// This Bicep template deploys a storage account in Azure.

// Parameters
param storageName string = 'stg${uniqueString(resourceGroup().id)}' // The name of the storage account, generated uniquely based on the resource group ID.
param location string = resourceGroup().location // The location where the storage account will be deployed.

// Resources
resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageName // The name of the storage account.
  location: location // The location of the storage account.
  kind: 'StorageV2' // The kind of the storage account.
  sku: {
    name: 'Premium_LRS' // The SKU of the storage account, which is Premium Locally Redundant Storage.
  }
}