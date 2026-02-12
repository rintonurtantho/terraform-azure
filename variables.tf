variable "location" {
  default = "Southeast Asia"
}

variable "admin_username" {
  description = "Username untuk login VM"
  type        = string
}

variable "admin_password" {
  description = "Password untuk login VM"
  type        = string
  sensitive   = true
}