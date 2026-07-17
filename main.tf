terraform {
    backend "azurerm" {}
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
    }
  }
  
}
provider "azurerm" {
    features {
      
    }
  
}

resource "azurerm_resource_group" "RG" {
  name = "dev-rg"
  location = "centralindia"
  
}