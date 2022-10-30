resource "azurerm_network_security_group" "nsg-projeto1-001" {
  name                = "nsg-projeto1-001"
  location            = azurerm_resource_group.rg-01.location
  resource_group_name = azurerm_resource_group.rg-01.name

  security_rule {
    name                       = "allow_rdp"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "snet-projeto1-001" {
  subnet_id                 = azurerm_subnet.snet-projeto1-001.id
  network_security_group_id = azurerm_network_security_group.nsg-projeto1-001.id
}