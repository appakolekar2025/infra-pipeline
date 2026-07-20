module "resource_group" {
  source = "../../module/azurerm_resouce_group"
  rg     = var.resource_group

}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_virtual_network"
  vnets      = var.virtual_network

}
module "subnet" {
  depends_on = [module.virtual_network, module.resource_group]
  source     = "../../module/azurerm_subnet"
  snets      = var.subnet
}
module "pip" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_PIP"
  pip        = var.public_ip

}
module "vm" {
  depends_on = [ module.pip,module.subnet ]
  source = "../../module/azurerm_vm"
  vms = var.virtual_machine
  nic = var.network_interface
  
}
