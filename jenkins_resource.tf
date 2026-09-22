resource "azurerm_resource_group" "jenkins_rg" {

name = "jenkins_rgs2"

location = "east us"

}



resource "azurerm_virtual_network" "terra_vm_network" {

name = "terra_vm_network_01"

location = azurerm_resource_group.jenkins_rg.location

resource_group_name = azurerm_resource_group.jenkins_rg.name

address_space = ["10.0.0.0/16"]

}

resource "azurerm_storage_account" "stg" {
  name                     = "jenkinsstg12345"
  resource_group_name      = azurerm_resource_group.jenkins_rg.name
  location                 = azurerm_resource_group.jenkins_rg.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Dev"
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "terraform-container"
  storage_account_id    = azurerm_storage_account.stg.id
  container_access_type = "private"
}