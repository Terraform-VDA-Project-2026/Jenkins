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