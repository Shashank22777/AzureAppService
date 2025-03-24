variable "name" {
  type        = string
  description = "The name of the Traffic Manager profile"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the Traffic Manager profile will be created"
}

variable "routing_method" {
  type        = string
  description = "Routing method used by the Traffic Manager (e.g., Performance, Weighted, Priority)"
}

variable "endpoints" {
  type = list(object({
    name     = string    # Name of the endpoint
    type     = string    # Type of the endpoint (e.g., "azureEndpoints")
    target   = string    # Target resource (e.g., App Service URL)
    priority = number    # Priority for routing
  }))
  description = "A list of Traffic Manager endpoints to be added to the profile"
}

variable "tags" {
  type        = map(string)
  description = "Tags to associate with the Traffic Manager profile"
}