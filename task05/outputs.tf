output "traffic_manager_fqdn" {
  value       = module.traffic_manager.fqdn
  description = "The fully qualified domain name of the Traffic Manager profile"
}

# output "resource_group_names" {
#   value = {
#     rg1 = module.rg1.name,
#     rg2 = module.rg2.name,
#     rg3 = module.rg3.name
#   }
#   description = "Resource group names and their locations"
# }

# output "app_service_urls" {
#   value       = [module.app1.default_hostname, module.app2.default_hostname]
#   description = "The URLs of the deployed App Services"
# }
