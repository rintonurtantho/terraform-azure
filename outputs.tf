output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "vm_public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

