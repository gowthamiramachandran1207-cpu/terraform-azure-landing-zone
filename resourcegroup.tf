resource "azurerm_resource_group" "this" {
  for_each = var.resource_groups

  name     = "${var.environment}-rg-${each.key}"
  location = each.value.location
  tags     = local.common_tags
}