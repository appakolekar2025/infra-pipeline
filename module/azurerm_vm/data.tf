data "azurerm_subnet" "subnet" {
  for_each = var.nic
  name = each.value.name
  resource_group_name = each.value.nic_rg_name
  virtual_network_name = each.value.virtual_network_name
  
}
data "azurerm_public_ip" "pip" {
  for_each = var.nic
  name = each.value.pip_name
  resource_group_name = each.value.nic_rg_name

  
  
}