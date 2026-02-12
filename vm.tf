# Virtual Machine Ubuntu
resource "azurerm_linux_virtual_machine" "vm" {
  name                = "vm-ubuntu-basic"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B2als_v2"
  admin_username      = "rinto"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

# Gunakan password authentication
  disable_password_authentication = false
  admin_password                  = var.admin_password

  os_disk {
    name                 = "osdisk-ubuntu-basic"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}
