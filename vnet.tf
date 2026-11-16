resource "azurerm_virtual_network" "this" {
  name                = "${var.environment}-vnet-landing"
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.this["network"].location
  resource_group_name = azurerm_resource_group.this["network"].name
  tags                = local.common_tags
}
