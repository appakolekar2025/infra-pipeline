terraform {
    
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    resource_group_name = "production-rg"
    storage_account_name = "prodstorage1998"
    container_name = "container"
    key = "terraform-tf-state"
    
  }
  
}
provider "azurerm" {
    features {
      
    }
  
}

resource "azurerm_resource_group" "RG" {
  name = "prod-rg"
  location = "centralindia"
  
}