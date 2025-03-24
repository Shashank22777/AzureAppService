variable "name" {
  type        = string
  description = "The name of the App Service Plan."
}

variable "location" {
  type        = string
  description = "The Azure region where the App Service Plan is to be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the App Service Plan is created."
}

variable "sku" {
  type        = string
  description = "The SKU/tier of the App Service Plan, e.g., P0v3 or P1v3."
}

variable "worker_count" {
  type        = number
  description = "The number of workers/instances for the App Service Plan."
}

variable "tags" {
  type        = map(string)
  description = "Tags to associate with the App Service Plan."
}
