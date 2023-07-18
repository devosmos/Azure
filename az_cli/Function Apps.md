## Azure Function Apps  - Set Linux Function Runtime Version
```
az login
az cloud set --name AzureCloud
az account set --subscription <subscriptionId>
az functionapp config show --name <functionapp> --resource-group <resourcegroup> --query "linuxFxVersion"
az functionapp config set --name <functionapp> --resource-group <resourcegroup> --linux-fx-version "PYTHON|3.9"
```
