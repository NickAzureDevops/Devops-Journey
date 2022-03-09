provider "azurerm" {
    version = "~> 2.0"
    features {}
}


terraform {
    backend "azurerm" {
      resource_group_name = "devops-journey-rg"   
      storage_account_name = "devopsjourney"
      container_name = "terraform.tfstate`"
    }
}

data "azurerm_client_config" "current" {}