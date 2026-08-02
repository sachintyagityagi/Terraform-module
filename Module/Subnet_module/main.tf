resource "azurerm_subnet" "Subnet" {
  for_each             = var.subnet
  name                 = each.value.name
  resource_group_name  = each.value.RGname
  virtual_network_name = each.value.Vnetname
  address_prefixes     = [each.value.adderess]

 
}