# VM Linux dockertest1
resource "azurerm_linux_virtual_machine" "dockertest1" {
  name                = "dockertest1"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B2als_v2"
  network_interface_ids = [
    azurerm_network_interface.nic1.id,
  ]
  
# Gunakan password authentication
  disable_password_authentication = false
  admin_username      = var.admin_username
  admin_password      = var.admin_password

  os_disk {
    name                 = "osdisk-dockertest1"
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

# VM Linux dockertest2
resource "azurerm_linux_virtual_machine" "dockertest2" {
  name                = "dockertest2"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B2als_v2"
  network_interface_ids = [
    azurerm_network_interface.nic2.id,
  ]
  
# Gunakan password authentication
  disable_password_authentication = false
  admin_username      = var.admin_username
  admin_password      = var.admin_password

  os_disk {
    name                 = "osdisk-dockertest2"
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

