terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-backend-rg"
    storage_account_name = "terraformbackend123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
