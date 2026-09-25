resource "azurerm_resource_group" "name" {
  name     = "jenrgs"
  location = "eastus"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "terra_vm_network_01"
  location            = azurerm_resource_group.name.location
  resource_group_name = azurerm_resource_group.name.name

  address_space = ["10.0.0.0/16"]

  depends_on = [
    azurerm_resource_group.name
  ]
}

