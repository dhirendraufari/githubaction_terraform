resource "azurerm_subnet" "dhiru_subnet" {
    for_each = var.subnetjbp
  name                 = each.value.subnetname
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}