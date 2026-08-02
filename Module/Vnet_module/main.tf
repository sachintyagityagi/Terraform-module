resource "azurerm_virtual_network" "vnet" {
  for_each            = var.Vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.RGname
  address_space       = [each.value.ip_address_range]
}
  