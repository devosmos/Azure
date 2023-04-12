# Azure CLI commands for Azure Monitor

### Get Azure Log Analytics Workspace Id
```
az monitor log-analytics workspace show --resource-group <resourceGroupName>  --subscription <subscriptionId>  --workspace-name <workspaceName> --query [customerId] --output tsv
```

### Get Azure Log Analytics Workspace data retention period
```
az monitor log-analytics workspace show --resource-group <resourceGroupName>  --subscription <subscriptionId>  --workspace-name <workspaceName> --query [retentionInDays] --output tsv
```

### Get Azure Log Analytics Workspace daily cap limit
```
az monitor log-analytics workspace show --resource-group <resourceGroupName>  --subscription <subscriptionId>  --workspace-name <workspaceName> --query [workspaceCapping] --output table
```

### Get Azure Log Analytics Workspace Key (Primary and Secondary)
```
az monitor log-analytics workspace get-shared-keys --resource-group <resourceGroupName> --subscription <subscriptionId>  --workspace-name <workspaceName>
```
Pass `primarySharedKey` or `secondarySharedKey` in the query to get exactly the value you want.
```
az monitor log-analytics workspace get-shared-keys --resource-group <resourceGroupName> --subscription <subscriptionId>  --workspace-name <workspaceName> --query [primarySharedKey] --output tsv
```

### List all the tables, their plan, total and archive rentenion period in days for an Azure Log Analytics workspace
```
az monitor log-analytics workspace table list --resource-group <resourceGroupName> --workspace-name <workspaceName> --subscription <subscriptionId> --query "[].{tableName:name,plan:plan,totalRetention:totalRetentionInDays,archiveRetention:archiveRetentionInDays}" --output table
```
