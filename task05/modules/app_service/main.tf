resource "azurerm_windows_web_app" "web_app" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = var.service_plan_id  # Fixed to use the variable

  identity {
    type = "SystemAssigned"
  }

  site_config {
    always_on = true
  }

  tags = var.tags

  # Dynamic IP restrictions
  dynamic "ip_restriction" {
    for_each = var.ip_restrictions
    content {
      name        = ip_restriction.value.name
      ip_address  = ip_restriction.value.ip_address
      service_tag = ip_restriction.value.service_tag
      action      = ip_restriction.value.action
    }
  }
}