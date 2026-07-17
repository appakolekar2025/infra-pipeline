terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    resource_group_name = "production-rg"
    storage_account_name = "prodstorage1998"
    container_name = "container1"
    key = "prod-tf-state"
    
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