provider "azurerm" {
    version = "~> 2.0"
    features {
          log_analytics_workspace {
         purge_soft_delete_on_destroy = true
    }
}

}

terraform {
    backend "azurerm" {
      resource_group_name = "devops-journey-rg"   
      storage_account_name = "devopsjourney"
      container_name = "terraform.tfstate`"
    }
}

data "azurerm_client_config" "current" {}