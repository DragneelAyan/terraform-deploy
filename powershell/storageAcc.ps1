# Variables
resourceGroupName="terraform-backend-rg69"
location="centralindia"
storageAccountName="terraformbackend69"   # must be globally unique
containerName="tfstate"

# Create resource group
az group create --name $resourceGroupName --location $location

# Create storage account
az storage account create --name $storageAccountName --resource-group $resourceGroupName --location $location --sku Standard_LRS

# Get storage account key
accountKey=$(az storage account keys list --resource-group $resourceGroupName --account-name $storageAccountName --query '[0].value' -o tsv)

# Create container
az storage container create --name $containerName --account-name $storageAccountName --account-key $accountKey
