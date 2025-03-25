output "traffic_manager_fqdn" {
  value       = azurerm_traffic_manager_profile.tm_profile.fqdn
  description = "The fully qualified domain name of the Traffic Manager profile"
}

