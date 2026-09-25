terraform {

  backend "azurerm" {
  storage_account_name = "jenkinsstatefile "
  container_name = "state"
  resource_group_name = "jenrgs"
    
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

