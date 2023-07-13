# Login to Azure
Connect-AzAccount

# Set the subscription
Set-AzContext -Subscription "SubscriptionId"

# Define the list of resource groups to delete
$rgList = @("RG1", "RG2",""RG2"")

# Loop through each resource group and delete it
foreach ($rg in $rgList) {
# Check if the resource group exists
	if (Get-AzResourceGroup -Name $rg -ErrorAction SilentlyContinue) {
	# Delete the resource group and all its resources
	Remove-AzResourceGroup -Name $rg -Force
	# Write a message to indicate the deletion
	Write-Host "Deleted resource group $rg"
	}else {
	# Write a message to indicate the resource group does not exist
	Write-Host "Resource group $rg does not exist"
	}
}