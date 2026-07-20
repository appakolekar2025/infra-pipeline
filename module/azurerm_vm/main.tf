resource "azurerm_network_interface" "nic" {
    for_each = var.nic
  name = each.value.name
  resource_group_name = each.value.nic_rg_name
  location = each.value.nic_location

  ip_configuration {
    name = each.value.name
    subnet_id = data.azurerm_subnet.subnet[each.key].id
    public_ip_address_id =data.azurerm_public_ip.pip[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
  
}


resource "azurerm_linux_virtual_machine" "virtual_machine" {
    for_each = var.vms
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
admin_username      = each.value.admin_username
  admin_password = each.value.admin_password
  disable_password_authentication=false
  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id
  ]

 
  os_disk {
    caching              = each.value.os_disk.caching
      storage_account_type = each.value.os_disk.storage_account_type
  }

source_image_reference {
  publisher = each.value.source_image_reference.publisher
  offer      = each.value.source_image_reference.offer
  sku         = each.value.source_image_reference.sku
  version     = each.value.source_image_reference.version
}
}