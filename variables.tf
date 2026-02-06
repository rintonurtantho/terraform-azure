variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Southeast Asia"
}

variable "admin_username" {
  type        = string
  description = "VM admin username"
}

variable "admin_password" {
  type        = string
  sensitive   = true
  description = "VM admin password"
}