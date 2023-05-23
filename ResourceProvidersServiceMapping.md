# Resource provider
An Azure resource provider is a collection of REST operations that provide functionality for an Azure service. For example, the Key Vault service consists of a resource provider named Microsoft.KeyVault. The resource provider defines REST operations for working with vaults, secrets, keys, and certificates.<sup>1</sup>

To see all resource providers, and the registration status for your subscription, use:

```
Connect-AzAccount
Select-AzSubscription -Subscription <Subscription>
Get-AzResourceProvider -ListAvailable | Select-Object ProviderNamespace, RegistrationState
```
To find all registered resource providers for your subscription, filter by RegistrationState:
```
Get-AzResourceProvider -ListAvailable | Where-Object RegistrationState -eq "Registered" | Select-Object ProviderNamespace, RegistrationState | Sort-Object ProviderNamespace
```
# Following resource providers are registered by default for your subscription
| Resource provider namespace | Azure service |
| --------------------------- | ------------- |
| Microsoft.ADHybridHealthService  | Azure Active Directory |
| Microsoft.Authorization  | Azure Resource Manager |
| Microsoft.Billing  | Cost Management and Billing |
| Microsoft.ClassicSubscription  | Classic deployment model |
| Microsoft.Commerce  | core |
| Microsoft.Consumption  | Cost Management |
| Microsoft.CostManagement  | Cost Management |
| Microsoft.Features  | Azure Resource Manager |
| Microsoft.MarketplaceOrdering  | core |
| Microsoft.Portal  | Azure portal |
| Microsoft.ResourceGraph  | Azure Resource Graph |
| Microsoft.Resources  | Azure Resource Manager |
| Microsoft.SerialConsole  | Azure Serial Console for Windows |
| microsoft.support  | core |


# Resource provider namespaces mapping to Azure services

| Resource provider namespace | Azure service |
| --------------------------- | ------------- |
| Microsoft.AAD | Azure Active Directory Domain Services |
| Microsoft.Addons | core |
| Microsoft.App | Azure Container Apps |
| Microsoft.ADHybridHealthService -  | Azure Active Directory |
| Microsoft.Advisor | Azure Advisor |
| Microsoft.AlertsManagement | Azure Monitor |
| Microsoft.AnalysisServices | Azure Analysis Services |
| Microsoft.ApiManagement | API Management |
| Microsoft.AppConfiguration | Azure App Configuration |
| Microsoft.AppPlatform | Azure Spring Apps |
| Microsoft.Attestation | Azure Attestation Service |
| Microsoft.Authorization -  | Azure Resource Manager |
| Microsoft.Automation | Automation |
| Microsoft.AutonomousSystems | Autonomous Systems |
| Microsoft.AVS | Azure VMware Solution |
| Microsoft.AzureActiveDirectory | Azure Active Directory B2C |
| Microsoft.AzureArcData | Azure Arc-enabled data services |
| Microsoft.AzureData | SQL Server registry |
| Microsoft.AzureStack | core |
| Microsoft.AzureStackHCI | Azure Stack HCI |
| Microsoft.Batch | Batch |
| Microsoft.Billing -  | Cost Management and Billing |
| Microsoft.BingMaps | Bing Maps |
| Microsoft.Blockchain | Azure Blockchain Service |
| Microsoft.BlockchainTokens | Azure Blockchain Tokens |
| Microsoft.Blueprint | Azure Blueprints |
| Microsoft.BotService | Azure Bot Service |
| Microsoft.Cache | Azure Cache for Redis |
| Microsoft.Capacity | core |
| Microsoft.Cdn | Content Delivery Network |
| Microsoft.CertificateRegistration | App Service Certificates |
| Microsoft.ChangeAnalysis | Azure Monitor |
| Microsoft.ClassicCompute | Classic deployment model virtual machine |
| Microsoft.ClassicInfrastructureMigrate | Classic deployment model migration |
| Microsoft.ClassicNetwork | Classic deployment model virtual network |
| Microsoft.ClassicStorage | Classic deployment model storage |
| Microsoft.ClassicSubscription -  | Classic deployment model |
| Microsoft.CognitiveServices | Cognitive Services |
| Microsoft.Commerce -  | core |
| Microsoft.Compute | Virtual Machines<br />Virtual Machine Scale Sets |
| Microsoft.Consumption -  | Cost Management |
| Microsoft.ContainerInstance | Container Instances |
| Microsoft.ContainerRegistry | Container Registry |
| Microsoft.ContainerService | Azure Kubernetes Service  |
| Microsoft.CostManagement -  | Cost Management |
| Microsoft.CostManagementExports | Cost Management |
| Microsoft.CustomerLockbox | Customer Lockbox for Microsoft Azure |
| Microsoft.CustomProviders | Azure Custom Providers |
| Microsoft.DataBox | Azure Data Box |
| Microsoft.DataBoxEdge | Azure Stack Edge |
| Microsoft.Databricks | Azure Databricks |
| Microsoft.DataCatalog | Data Catalog |
| Microsoft.DataFactory | Data Factory |
| Microsoft.DataLakeAnalytics | Data Lake Analytics |
| Microsoft.DataLakeStore | Azure Data Lake Storage Gen2 |
| Microsoft.DataMigration | Azure Database Migration Service |
| Microsoft.DataProtection | Data Protection |
| Microsoft.DataShare | Azure Data Share |
| Microsoft.DBforMariaDB | Azure Database for MariaDB |
| Microsoft.DBforMySQL | Azure Database for MySQL |
| Microsoft.DBforPostgreSQL | Azure Database for PostgreSQL |
| Microsoft.DesktopVirtualization | Azure Virtual Desktop |
| Microsoft.Devices | Azure IoT Hub<br />Azure IoT Hub Device Provisioning Service |
| Microsoft.DeviceUpdate | Device Update for IoT Hub
| Microsoft.DevOps | Azure DevOps |
| Microsoft.DevSpaces | Azure Dev Spaces |
| Microsoft.DevTestLab | Azure Lab Services |
| Microsoft.DigitalTwins | Azure Digital Twins |
| Microsoft.DocumentDB | Azure Cosmos DB |
| Microsoft.DomainRegistration | App Service |
| Microsoft.DynamicsLcs | Lifecycle Services |
| Microsoft.EnterpriseKnowledgeGraph | Enterprise Knowledge Graph |
| Microsoft.EventGrid | Event Grid |
| Microsoft.EventHub | Event Hubs |
| Microsoft.Features -  | Azure Resource Manager |
| Microsoft.GuestConfiguration | Azure Policy |
| Microsoft.HanaOnAzure | SAP HANA on Azure Large Instances |
| Microsoft.HardwareSecurityModules | Azure Dedicated HSM |
| Microsoft.HDInsight | HDInsight |
| Microsoft.HealthcareApis  | Azure API for FHIR |
| Microsoft.HealthcareApis  | Healthcare APIs |
| Microsoft.HybridCompute | Azure Arc-enabled servers |
| Microsoft.HybridData | StorSimple |
| Microsoft.HybridNetwork  | Network Function Manager |
| Microsoft.ImportExport | Azure Import/Export |
| Microsoft.Insights | Azure Monitor |
| Microsoft.IoTCentral | Azure IoT Central |
| Microsoft.IoTSpaces | Azure Digital Twins |
| Microsoft.Intune | Azure Monitor |
| Microsoft.KeyVault | Key Vault |
| Microsoft.Kubernetes | Azure Arc-enabled Kubernetes |
| Microsoft.KubernetesConfiguration | Azure Arc-enabled Kubernetes |
| Microsoft.Kusto | Azure Data Explorer |
| Microsoft.LabServices | Azure Lab Services |
| Microsoft.Logic | Logic Apps |
| Microsoft.MachineLearning | Machine Learning Studio |
| Microsoft.MachineLearningServices | Azure Machine Learning |
| Microsoft.Maintenance | Azure Maintenance |
| Microsoft.ManagedIdentity | Managed identities for Azure resources |
| Microsoft.ManagedNetwork | Virtual networks managed by PaaS services |
| Microsoft.ManagedServices | Azure Lighthouse |
| Microsoft.Management | Management Groups |
| Microsoft.Maps | Azure Maps |
| Microsoft.Marketplace | core |
| Microsoft.MarketplaceApps | core |
| Microsoft.MarketplaceOrdering -  | core |
| Microsoft.Media | Media Services |
| Microsoft.Microservices4Spring | Azure Spring Apps |
| Microsoft.Migrate | Azure Migrate |
| Microsoft.MixedReality | Azure Spatial Anchors |
| Microsoft.MobileNetwork | Azure Private 5G Core |
| Microsoft.NetApp | Azure NetApp Files |
| Microsoft.Network | Application Gateway<br />Azure Bastion<br />Azure DDoS Protection<br />Azure DNS<br />Azure ExpressRoute<br />Azure Firewall<br />Azure Front Door Service<br />Azure Private Link<br />Azure Route Server<br />Load Balancer<br />Network Watcher<br />Traffic Manager<br />Virtual Network<br />Virtual Network NAT<br />Virtual WAN<br />VPN Gateway<br /> |
| Microsoft.Notebooks | Azure Notebooks |
| Microsoft.NotificationHubs | Notification Hubs |
| Microsoft.ObjectStore | Object Store |
| Microsoft.OffAzure | Azure Migrate |
| Microsoft.OperationalInsights | Azure Monitor |
| Microsoft.OperationsManagement | Azure Monitor |
| Microsoft.Peering | Azure Peering Service |
| Microsoft.PolicyInsights | Azure Policy |
| Microsoft.Portal -  | Azure portal |
| Microsoft.PowerBI | Power BI |
| Microsoft.PowerBIDedicated | Power BI Embedded |
| Microsoft.PowerPlatform | Power Platform |
| Microsoft.ProjectBabylon | Azure Data Catalog |
| Microsoft.Quantum | Azure Quantum |
| Microsoft.RecoveryServices | Azure Site Recovery |
| Microsoft.RedHatOpenShift | Azure Red Hat OpenShift |
| Microsoft.Relay | Azure Relay |
| Microsoft.ResourceGraph -  | Azure Resource Graph |
| Microsoft.ResourceHealth | Azure Service Health |
| Microsoft.Resources -  | Azure Resource Manager |
| Microsoft.SaaS | core |
| Microsoft.Scheduler | Scheduler |
| Microsoft.Search | Azure Cognitive Search |
| Microsoft.Security | Security Center |
| Microsoft.SecurityInsights | Microsoft Sentinel |
| Microsoft.SerialConsole -  | Azure Serial Console for Windows |
| Microsoft.ServiceBus | Service Bus |
| Microsoft.ServiceFabric | Service Fabric |
| Microsoft.Services | core |
| Microsoft.SignalRService | Azure SignalR Service |
| Microsoft.SoftwarePlan | License |
| Microsoft.Solutions | Azure Managed Applications |
| Microsoft.Sql | Azure SQL Database<br /> Azure SQL Managed Instance <br />Azure Synapse Analytics |
| Microsoft.SqlVirtualMachine | SQL Server on Azure Virtual Machines |
| Microsoft.Storage | Storage |
| Microsoft.StorageCache | Azure HPC Cache |
| Microsoft.StorageSync | Storage |
| Microsoft.StorSimple | StorSimple |
| Microsoft.StreamAnalytics | Azure Stream Analytics |
| Microsoft.Subscription | core |
| microsoft.support -  | core |
| Microsoft.Synapse | Azure Synapse Analytics |
| Microsoft.TimeSeriesInsights | Azure Time Series Insights |
| Microsoft.Token | Token |
| Microsoft.VirtualMachineImages | Azure Image Builder |
| microsoft.visualstudio | Azure DevOps |
| Microsoft.VMware | Azure VMware Solution |
| Microsoft.VMwareCloudSimple | Azure VMware Solution by CloudSimple |
| Microsoft.VSOnline | Azure DevOps |
| Microsoft.Web | App Service<br />Azure Functions |
| Microsoft.WindowsDefenderATP | Microsoft Defender Advanced Threat Protection |
| Microsoft.WindowsESU | Extended Security Updates |
| Microsoft.WindowsIoT | Windows 10 IoT Core Services |
| Microsoft.WorkloadMonitor | Azure Monitor |

References: <br/>
1. [Azure resource providers and types](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/azure-services-resource-providers)
2. [Resource providers for Azure services](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-providers-and-types)
