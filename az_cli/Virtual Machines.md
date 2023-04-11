# Azure Virtual Machine

### Get the Azure Log Analytics Workspace Id to which VM is sending logs through Microsoft Monitoring agent (OMSExtension)
```
az vm extension list --resource-group <resourceGroupName> --vm-name <VMName> --query "[?typePropertiesType == 'MicrosoftMonitoringAgent'].{workspaceId:settings.workspaceId}" --output tsv
```
Get the name of the workspace from Id:
```
az monitor log-analytics workspace list --subscription <subscriptionId> --query "[?customerId == '<workspaceId>'].name" --output tsv
```
