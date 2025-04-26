resource "azurerm_resource_group" "jabalpur_RG" {
    for_each = var.rg
    name = each.value.rgname
    location = each.value.location
  
}