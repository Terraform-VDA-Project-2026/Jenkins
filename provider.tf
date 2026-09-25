terraform {

 backend "azurerm" {
  storage_account_name = "jenkinsstatefile"
  container_name = "state"
  resource_group_name = "jenrg"
  key = "terraform.tfstate"
  
    
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


