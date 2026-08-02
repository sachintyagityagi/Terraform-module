resource "azurerm_virtual_machine" "VM" {
    for_each = var.vm
  name                  = each.value.name
  location              = each.value.location
  resource_group_name   = each.value.RGname
  network_interface_ids = [data.azurerm_network_interface.NICdata[each.key].id]
  vm_size               = each.value.VMsize

  storage_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
  storage_os_disk {
    name              = each.value.name_os_disk
    caching           = each.value.caching
    create_option     = each.value.create_option
    managed_disk_type = each.value.managed_disk_type
  }
  os_profile {
    computer_name  = each.value.computer_name
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  
}