variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "ci-cd-learning-rg"
}

variable "location" {
  description = "Azure region for the resource group"
  type        = string
  default     = "East US"
}