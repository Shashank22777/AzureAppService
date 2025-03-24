variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
  description = "Configuration for Azure resource groups"
}

variable "app_service_plans" {
  type = map(object({
    name         = string
    sku          = string
    worker_count = number
    tags         = map(string)
  }))
  description = "Configuration for App Service Plans"
}

variable "app_services" {
  type = map(object({
    name = string
    tags = map(string)
  }))
  description = "Configuration for Windows App Services"
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
  description = "Configuration for App Services access rules"
}

variable "traffic_manager" {
  type = object({
    name           = string
    routing_method = string
    tags           = map(string)
  })
  description = "Traffic Manager profile details"
}