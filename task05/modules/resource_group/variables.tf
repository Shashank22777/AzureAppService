variable "name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location where the resource group will be created"
}

variable "tags" {
  type        = map(string)
  description = "Tags to associate with the resource group"
}