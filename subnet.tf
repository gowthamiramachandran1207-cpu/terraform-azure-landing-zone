resource "azurerm_subnet" "this" {
  count = length(var.subnet_prefixes)

  name                 = "subnet-${count.index + 1}"
  resource_group_name  = azurerm_resource_group.this["network"].name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [var.subnet_prefixes[count.index]]
}