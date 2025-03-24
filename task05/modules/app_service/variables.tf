variable "name" {
  type        = string
  description = "The name of the Windows App Service"
}

variable "location" {
  type        = string
  description = "The Azure region where the App Service will be deployed"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for this App Service"
}

variable "service_plan_id" {
  type        = string
  description = "The ID of the App Service Plan associated with this Windows App Service"
}

variable "ip_restrictions" {
  type = list(object({
    name        = string
    ip_address  = string
    service_tag = string
    action      = string
  }))
  description = "Access restrictions for the App Service"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the App Service"
}