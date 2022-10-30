resource "azurerm_virtual_network" "vnet-projeto1-001" {
  name                = var.vnet
  location            = azurerm_resource_group.rg-01.location
  resource_group_name = azurerm_resource_group.rg-01.name
  address_space       = ["10.100.0.0/16"]

}