resource "azurerm_virtual_network" "vnet" {
    for_each = var.vnets
    resource_group_name = each.value.rg_name
    name = each.value.vnet_name
    location = each.value.location
    address_space = each.value.address_space

}