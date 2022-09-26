terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    subscription_id      = "09675314-6fc3-4b4c-95b3-d62ef3c04c76"
    resource_group_name  = "admin-tools-rg"
    storage_account_name = "tfstatevmi"
    container_name       = "tfstate"
    key                  = "poc.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "09675314-6fc3-4b4c-95b3-d62ef3c04c76"
}