terraform {

 backend "azurerm" {
  storage_account_name = "jenkinsstatefile"
  container_name = "state"
  resource_group_name = "jenrg"
  key = "terraform.tfstate"
  subscription_id = "252026ba-6735-4965-9bbf-6bad9c701532"
    
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


