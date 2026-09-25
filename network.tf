

resource "azurerm_virtual_network" "terra_vm_network" {
  name                = var.vnet
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
  location            = var.my_location

  tags = {
    "enviromment" = "prod"
  }
}