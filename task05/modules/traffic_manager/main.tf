resource "azurerm_traffic_manager_profile" "tm_profile" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  traffic_routing_method = var.routing_method

  dns_config {
    relative_name = var.name
    ttl           = 60
  }

  monitor_config {
    protocol = "HTTPS"
    port     = 443
    path     = "/"
  }

  tags = var.tags
}

resource "azurerm_traffic_manager_endpoint" "tm_endpoint" {
  for_each = { for index, endpoint in var.endpoints : index => endpoint }
  #for_each = var.endpoints
  name                = each.value.name
  profile_name        = azurerm_traffic_manager_profile.tm_profile.name
  resource_group_name = var.resource_group_name
  type                = each.value.type
  target              = each.value.target
  priority            = each.value.priority
}
