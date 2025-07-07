terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "demo-storage-rg"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "demostorageacct01"  # must be unique, lowercase, 3–24 chars
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"

  tags = {
    environment = "demo"
    purpose     = "terraform"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "myblobcontainer"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"  # Options: private | blob | container
}
