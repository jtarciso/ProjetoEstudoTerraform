resource "azurerm_windows_virtual_machine" "vm-win10" {
  count = 2
  name                = "vm-win-00${count.index+1}"
  resource_group_name = azurerm_resource_group.rg-01.name
  location            = var.location
  size                = "Standard_DS1_v2"
  admin_username      = "azadmin "
  admin_password      = "Conectenuvem@123"
  network_interface_ids = [
    element(azurerm_network_interface.nic-vm.*.id, count.index+1)]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }

source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "Windows-10"
    sku       = "win10-21h2-pro-g2"
    version = "latest"
  }
 
}