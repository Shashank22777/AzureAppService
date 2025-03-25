variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
  description = "Map of resource groups with their name, location, and tags."
}

variable "app_service_plans" {
  type = map(object({
    name         = string
    sku          = string
    worker_count = number
    tags         = map(string)
  }))
  description = "Map of App Service Plans with their name, SKU, worker count, and tags."
}

variable "app_services" {
  type = map(object({
    name = string
    tags = map(string)
  }))
  description = "Map of App Services with their name and tags."
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
  description = "Object containing access rules for App Services. It includes allow-ip rule and allow-TM rule."
}

variable "traffic_manager" {
  type = object({
    name           = string
    routing_method = string
    tags           = map(string)
  })
  description = "Configuration for Traffic Manager profile including name, routing method, and tags."
}

