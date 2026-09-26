resource "azurerm_resource_group" "rgs" {
  name     = "jenkins-demo-rg"
  location = "Central India"

  tags = {
    Environment = "Dev"
    Owner       = "Suresh"
  }
}
