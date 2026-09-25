
variable "vnet" {
  type    = string
  default = "terra_vm_network_01"

}


variable "my_location" {
  type    = string
  default = "eastus"
}


variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16", "10.0.0.0/18", "10.0.0.0/20"]
}


variable "resource_group_name" {
  type    = string
  default = "terraform"
}

variable "subscription_id" {
  type    = string
  default = "252026ba-6735-4965-9bbf-6bad9c701532"

}

variable "tags" {
  type = map(string)
  default = {

    "enviromment" = "dev"
  }
}

