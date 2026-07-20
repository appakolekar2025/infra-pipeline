data "azurerm_subnet" "subnet" {
  for_each = var.nic
  name = each.value.subnet_name
  resource_group_name = each.value.rg_name
  virtual_network_name = each.value.nic_vnet_name
  
}
data "azurerm_public_ip" "pip" {
  for_each = var.nic
  name = each.value.nic_pip_name
  resource_group_name = each.value.rg_name

  
  
}