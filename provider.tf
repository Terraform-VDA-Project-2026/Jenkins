terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.5"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = azurerm_resource_group.jenkins_rg.name
    storage_account_name = "jenkinsstg1234"
    container_name       = "terraform-container"
    key                  = "jenkins.tfstate"
  }
}

provider "azurerm" {
  features {}
}