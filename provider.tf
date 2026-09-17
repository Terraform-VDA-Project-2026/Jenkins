terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = " < 6.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "252026ba-6735-4965-9bbf-6bad9c701532"
}