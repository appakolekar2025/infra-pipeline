resource_group = {
    rg1={
        name="dev-rg"
        location="eastus"
    }
}
virtual_network = {
    vnet1={
        name="dev-vnet"
        resource_group_name="dev-rg"
        location="eastus"
        address_space=["10.0.0.0/16"]
    }
}
subnet = {
    subnet1={
        name="frontend-subnet"
        resource_group_name="dev-rg"
        location="eastus"
        virtual_network_name="dev-vnet"
        address_prefixes=["10.0.1.0/24"]
    }
    subnet2={
        name="backend-subnet"
        resource_group_name="dev-rg"
        location="eastus"
        virtual_network_name="dev-vnet"
        address_prefixes=["10.0.2.0/24"]
    }
}
public_ip = {
    pip1={
        name="frontend_pip"
        resource_group_name="dev-rg"
        location="eastus"
        allocation_method="Static"
        
    }
       pip2={
        name="backend_pip"
        resource_group_name="dev-rg"
        location="eastus"
         allocation_method="Static"
         
    }
}
network_interface = {
    nic1={
        name="frontend-nic"
        nic_rg_name="dev-rg"
        nic_location="eastus"
        virtual_network_name="dev-vnet"
        subnet_name="frontend-subnet"
        pip_name="frontend_pip"
        private_ip_allocation_allocation="Dynamic"

    }
     nic2={
        name="backend-nic"
        nic_rg_name="dev-rg"
        nic_location="eastus"
        virtual_network_name="dev-vnet"
        subnet_name="backend-subnet"
        pip_name="backend_pip"
        private_ip_allocation_allocation="Dynamic"
        

    }
}
virtual_machine = {
    vm1={
        name="frontend-vm"
        resource_group_name="dev-rg"
        location="eastus"
        size="Standard_F2"
        admin_username      = "admin123"
  

  os_disk= {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference ={
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}

    }

