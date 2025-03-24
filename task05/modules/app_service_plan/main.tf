resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    tier     = substr(var.sku, 0, 1) # Extract first letter for tier (P -> Premium)
    size     = var.sku
    capacity = var.worker_count
  }
  tags = var.tags
}