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
    resource_group_name  = "jenkins_rgs3"
    storage_account_name = "jenkinsstg12345"
    container_name       = "terraform-container"
    key                  = "jenkins.tfstate"
  }
}

provider "azurerm" {
  features {}
}