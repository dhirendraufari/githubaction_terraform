terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.21.0"
    }
  }
  backend "azurerm" {
  resource_group_name  = "dhiru-rg1"
  storage_account_name = "dhirustorageaccount"
  container_name       = "tfstate"
  key                 = "terraform.tfstate"
}
}


provider "azurerm" {
  features {}
  # Configure the Azure Provider with the desired version       
  subscription_id = "e2b21bd3-23b3-43c2-a854-a8c3e3fad269"
}

