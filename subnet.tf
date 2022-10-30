resource "azurerm_subnet" "snet-projeto1-001" {
  name                 = var.snet
  resource_group_name  = azurerm_resource_group.rg-01.name
  virtual_network_name = azurerm_virtual_network.vnet-projeto1-001.name
  address_prefixes     = ["10.100.1.0/24"]

}

resource "azurerm_subnet" "AzureBastionSubnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.rg-01.name
  virtual_network_name = azurerm_virtual_network.vnet-projeto1-001.name
  address_prefixes     = ["10.100.250.0/24"]

}

