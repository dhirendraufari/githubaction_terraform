resource "azurerm_network_interface" "jabalpurnic" {
    for_each            = var.nicjbp
  name                = each.value.nicname
  location            = each.value.niclocation
    resource_group_name = each.value.resource_group_name
  

  ip_configuration {
    name                          = each.value.frontend_ip_configuration_name
    subnet_id                     = data.azurerm_subnet.jlrsubnet[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
}