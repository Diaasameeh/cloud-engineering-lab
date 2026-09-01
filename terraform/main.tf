terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "platform" {
  name     = "rg-platform-${var.environment}"
  location = var.location
  tags     = var.default_tags
}

module "logs_storage" {
  source              = "./modules/storage-account"
  name                = "stnovatechlogs${var.environment}"
  resource_group_name = azurerm_resource_group.platform.name
  location            = var.location
  tags                = var.default_tags
}
