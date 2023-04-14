# Azure CLI commands for Storage Account

## Show storage account properties
```
az storage account show --name <storageAccountName> --resource-group <resourceGroupName> --subscription <subscriptionId> 
```

Select a property you are interested. Say you want to know primary endpoints of storage account subresources.
```
az storage account show --name <storageAccountName> --resource-group <resourceGroupName> --subscription <subscriptionId> --query primaryEndpoints
```

You can also select more than one property.
```
az storage account show --name <storageAccountName> --resource-group <resourceGroupName> --subscription <subscriptionId> --query [accessTier,kind,sku]
```

### Get the connection string for a storage account.
```
az storage account show-connection-string --resource-group <resourceGroupName> --name <storageAccountName> --subscription <subscriptionId>
```
