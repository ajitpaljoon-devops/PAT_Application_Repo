resource "azurerm_subnet" "snet" {
    for_each = var.snets
    virtual_network_name = each.value.vnet_name
    resource_group_name = each.value.rg_name
    name = each.value.subnet_name
    address_prefixes = each.value.address_prefixes

  
}