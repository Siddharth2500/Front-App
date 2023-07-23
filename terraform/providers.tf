terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-front-end"
    storage_account_name = "frontendrealworldproject"
    container_name       = "terraform-state-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
