terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "RG" {
  name = "prod-rg"
  location = "centralindia"
  
}