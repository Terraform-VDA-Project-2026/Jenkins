resource "azurerm_managed_disk" "mydisk" {
  name                          = var.disk_name
  location                      = var.my_location
  resource_group_name           = var.resource_group_name
  storage_account_type          = "Standard_LRS"
  create_option                 = "Empty"
  disk_size_gb                  = var.disk_size
  public_network_access_enabled = var.public_network_access_enabled

  tags = var.tags

}


resource "azurerm_virtual_network" "terra_vm_network" {
  name                = "terra_vm_network_01"
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
  location            = var.my_location
}
