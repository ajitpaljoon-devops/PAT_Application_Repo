# module "rg" {
#   source = "../child_module/Azurerm_rg"
#   rgs    = var.rgs1

# }

# module "vnet" {
#   depends_on = [module.rg]
#   source     = "../child_module/Azurerm_vnet"
#   vnets      = var.vnet1

# }

# module "snet" {
#   depends_on = [module.vnet]
#   source     = "../child_module/Azurerm_subnet"
#   snets      = var.snet1

# }

# module "pip" {
#   depends_on = [module.rg]
#   source     = "../child_module/Azurerm_pip"
#   pips       = var.pip1

# }

# module "nic" {
#   depends_on = [module.pip, module.rg, module.snet]
#   source     = "../child_module/Azurerm_nic"
#   nics       = var.nic1

# }