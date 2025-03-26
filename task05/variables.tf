variable "resource_groups" {
  description = "List of resource groups with their names and locations"
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}

variable "app_service_plans" {
  description = "List of app service plans with their names, locations, SKU, and worker count"
  type = map(object({
    name         = string
    sku          = string
    worker_count = number
    tags         = map(string)
  }))
}

variable "app_services" {
  description = "List of app services with their names and service plan associations"
  type = map(object({
    name = string
    tags = map(string)
  }))
}

variable "traffic_manager" {
  description = "Traffic manager profile configuration"
  type = object({
    name           = string
    routing_method = string
    tags           = map(string)
  })
}

variable "access_rules" {
  type = object({
    allow_ip_rule = object({
      name       = string
      allowed_ip = string # Single IP or CIDR notation, e.g., "18.153.146.156/32"
    }),
    allow_tm_rule = object({
      name        = string
      service_tag = string # Predefined Azure Traffic Manager service tag
    })
  })
  description = "Access rules for IP restrictions and Traffic Manager."
}
