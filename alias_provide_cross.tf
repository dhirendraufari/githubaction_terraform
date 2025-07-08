terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = ""
  tenant_id = ""
  client_id = ""
  client_secret = ""
  alias = "Ketu"
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = ""
  tenant_id = ""
  client_id = ""
  client_secret = ""
  alias = "Rahu"
}