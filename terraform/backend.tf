terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-backend-rg69"
    storage_account_name = "terraformbackend69"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
