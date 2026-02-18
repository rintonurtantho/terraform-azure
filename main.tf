terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-basic"
  location = "Southeast Asia"
}

data "azurerm_client_config" "current" {}