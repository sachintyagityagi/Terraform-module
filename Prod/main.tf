#module
module "resource_group" {
  source = "../Module/resource_group"
  RG     = var.RG
}

module "Vnet" {
  depends_on = [module.resource_group]
  source     = "../Module/Vnet_module"
  Vnet       = var.Vnet
}

module "Subnet" {
  depends_on = [module.Vnet, module.resource_group]
  source     = "../Module/Subnet_module"
  subnet     = var.Subnet
}

module "NSG" {
  depends_on = [module.resource_group]
  source     = "../Module/NSG_module"
  nsg        = var.NSG
}

module "NIC" {
  depends_on = [module.resource_group, module.Vnet, module.Subnet, module.NSG]
  source     = "../Module/NIC_module"
  nic        = var.NIC
}

module "VM" {
  depends_on = [module.resource_group, module.Vnet, module.Subnet, module.NSG, module.NIC]
  source     = "../Module/VM_module"
  vm         = var.VM
}

module "pip" {
  depends_on = [module.resource_group, module.Vnet, module.Subnet, module.NSG, module.NIC]
  source     = "../Module/pip_module"
  pip        = var.PIP
}