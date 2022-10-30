resource "azurerm_public_ip" "pip-vm" {
    count = 2
  name                = "pip-vm-00${count.index+1}"
  resource_group_name = azurerm_resource_group.rg-01.name
  location            = azurerm_resource_group.rg-01.location
  allocation_method   = "Static"
}
