resource "azurerm_resource_group" "rg" {
  name     = "jenkins-demo-rg"
  location = "Central India"

  tags = {
    Environment = "Dev"
    Owner       = "Suresh"
  }
}
