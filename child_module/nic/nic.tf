resource "azurerm_network_interface" "nic" {
  for_each            = var.nic
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.example_subnet[each.key].id
    private_ip_address_allocation = "Dynamic"

    # This argument establishes the public IP mapping
    public_ip_address_id = data.azurerm_public_ip.example_pip[each.key].id
  }
}