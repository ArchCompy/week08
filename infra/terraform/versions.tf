terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate-s225445433-rg"
    storage_account_name = "tfstates225445433"
    container_name       = "tfstate"
    key                  = "koalatech-task102.tfstate"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
}
