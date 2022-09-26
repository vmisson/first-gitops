terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    subscription_id      = "16623543-0d38-47d3-82e7-7049f80d7fa0"
    resource_group_name  = "Infra-Management"
    storage_account_name = "tfstatevmisson"
    container_name       = "tfstate"
    key                  = "gitops.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "16623543-0d38-47d3-82e7-7049f80d7fa0"
}