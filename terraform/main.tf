terraform {
  backend "azurerm" {
    resource_group_name  = "ci-cd-learning-rg"
    storage_account_name = "stcicdterraform20261004"
    container_name       = "tfstate"
    key                  = "ci-cd-learning.tfstate"
    use_azuread_auth     = true
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "learning" {
  name     = var.resource_group_name
  location = var.location
}
