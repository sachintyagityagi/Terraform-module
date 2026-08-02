data "azurerm_network_interface" "NICdata" {
    for_each = var.vm
  name = each.value.NICname
  resource_group_name = each.value.RGname
}