resource "azurerm_virtual_network" "vnetjabalpur" {
 for_each = var.vnetjbp
  name = each.value.vnetname
  location = each.value.vnetlocation
  resource_group_name = each.value.resource_group_name
  address_space = each.value.address_space
}