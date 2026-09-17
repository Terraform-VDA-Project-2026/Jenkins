terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.5"
    }
  }
}

provider "azurerm" {
features {}
use_msi = true
subscription_id = "252026ba-6735-4965-9bbf-6bad9c701532"
}