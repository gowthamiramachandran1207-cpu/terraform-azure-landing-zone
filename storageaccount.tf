resource "azurerm_storage_account" "shared" {
  name                     = substr("${local.env_name}shared${random_string.shared_suffix.result}", 0, 24)
  resource_group_name      = azurerm_resource_group.this["shared"].name
  location                 = azurerm_resource_group.this["shared"].location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  min_tls_version          = "TLS1_2"
  tags                     = local.common_tags
}

resource "azurerm_storage_account" "logs" {
  name                     = substr("${local.env_name}logs${random_string.logs_suffix.result}", 0, 24)
  resource_group_name      = azurerm_resource_group.this["shared"].name
  location                 = azurerm_resource_group.this["shared"].location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  min_tls_version          = "TLS1_2"
  tags                     = local.common_tags
}
