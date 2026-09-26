terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "jenkins_rgs2"
    storage_account_name = "jenkinsstg12345"
    container_name       = "terraform-container"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
features {}
}

