# Azure CLI commands for Key Vault

### Get Key Vault resource Id
```
az resource list --name <keyVaultName> --resource-group <resourceGroupName> --subscription <subscriptionId> --resource-type Microsoft.KeyVault/vaults
```
Use query and tsv output to just get the Id value:
```
az resource list --name <keyVaultName> --resource-group <resourceGroupName> --subscription <subscriptionId> --resource-type Microsoft.KeyVault/vaults --query [0].id -o tsv
```
One can also use keyvault command group rather than resource:
```
az keyvault show --name <keyVaultName> --subscription <subscriptionId> --query "[id]" -o tsv
```

### Check if an application has access to Key Vault
```
az keyvault show --name <keyVaultName> --resource-group <resourceGroupName>  --subscription <subscriptionId> --query "properties.accessPolicies | [?contains(objectId,'<objectId>')]"
```
