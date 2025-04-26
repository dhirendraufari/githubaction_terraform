data "azurerm_subnet" "jlrsubnet" {
    for_each = var.nicjbp
    name                 = each.value.subnetname
    resource_group_name  = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
  
}