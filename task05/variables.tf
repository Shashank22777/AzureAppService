variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
  description = "Configuration for Azure resource groups with name, location, and tags."
}

variable "app_service_plans" {
  type = map(object({
    name         = string
    sku          = string
    worker_count = number
    tags         = map(string)
  }))
  description = "Map containing configuration details for Azure App Service Plans."
}

variable "app_services" {
  type = map(object({
    name = string
    tags = map(string)
  }))
  description = "Map containing configuration details for Windows App Services."
}

variable "access_rules" {
  type = object({
    allow_ip_rule = object({
      name       = string
      allowed_ip = string
    }),
    allow_tm_rule = object({
      name        = string
      service_tag = string
    })
  })
  description = "Configuration for IP access rules for App Services."
}

variable "traffic_manager" {
  type = object({
    name           = string
    routing_method = string
    tags           = map(string)
  })
  description = "Configuration for Azure Traffic Manager profile with name, routing method, and tags."
}
