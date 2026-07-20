resource_group = {
  rg1 = {
    name     = "dev-rg"
    location = "eastus"
  }
}
virtual_network = {
  vnet1 = {
    name                = "dev-vnet"
    resource_group_name = "dev-rg"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "dev-rg"
    location             = "eastus"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "dev-rg"
    location             = "eastus"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
public_ip = {
  pip1 = {
    name                = "frontend_pip"
    resource_group_name = "dev-rg"
    location            = "eastus"
    allocation_method   = "Static"

  }
  pip2 = {
    name                = "backend_pip"
    resource_group_name = "dev-rg"
    location            = "eastus"
    allocation_method   = "Static"

  }
}

virtual_machine = {
  vm1 = {
    name                = "frontend-vm"
    nic_name                      = "frontend-nic"
    rg_name                   = "dev-rg"
    location                  = "eastus"
     nic_vnet_name          = "dev-vnet"
     nic_subnet_name                   = "frontend-subnet"
     nic_pip_name                      = "backend_pip"
    size                = "Standard_F2"
    admin_username      = "admin123"
    admin_password      = "admin@12345"
    nic_name            = "frontend-nic"
    pip_name            = "frontend_pip"
    subnet_name         = "frontend-subnet"
      os_disk_caching              = "ReadWrite"
       os_disk_storage_account_type = "Standard_LRS"
      source_image_reference_publisher = "Canonical"
      source_image_reference_offer     = "UbuntuServer"
      source_image_reference_sku       = "16.04-LTS"
      source_image_reference_version   = "latest"
    }
  }



