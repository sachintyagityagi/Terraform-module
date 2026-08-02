data "azurerm_subnet" "Subnet" {
    for_each = var.nic
  name                 = each.value.subnet_name
  virtual_network_name = each.value.Vnetname
  resource_group_name  = each.value.RGname
}

data "azurerm_public_ip" "PublicIP" {
    for_each = var.nic
  name                = each.value.PIPname
  resource_group_name = each.value.RGname
  }