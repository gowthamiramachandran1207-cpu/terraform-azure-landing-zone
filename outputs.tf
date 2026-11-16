output "resource_group_names" {
  description = "Names of the created resource groups."
  value       = { for k, rg in azurerm_resource_group.this : k => rg.name }
}

output "virtual_network_name" {
  description = "Name of the landing zone VNet."
  value       = azurerm_virtual_network.this.name
}

output "network_security_group_name" {
  description = "Name of the NSG attached to the subnets."
  value       = azurerm_network_security_group.this.name
}

output "storage_account_names" {
  description = "Storage account names created in the landing zone."
  value = {
    shared = azurerm_storage_account.shared.name
    logs   = azurerm_storage_account.logs.name
  }
}
