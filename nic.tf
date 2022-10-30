resource "azurerm_network_interface" "nic-vm" {
    count = 2
  name                = "nic-vm-00${count.index+1}"
  location            = azurerm_resource_group.rg-01.location
  resource_group_name = azurerm_resource_group.rg-01.name 

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snet-projeto1-001.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.pip-vm[count.index].id
  }
}