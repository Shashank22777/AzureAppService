output "default_hostname" {
  value       = azurerm_windows_web_app.web_app.default_hostname
  description = "The default hostname of the App Service"
}

output "name" {
  value       = azurerm_windows_web_app.web_app.name
  description = "The name of the created App Service"
}

output "id" {
  value       = azurerm_app_service_plan.app_service_plan.id
  description = "The ID of the created App Service Plan"
}
