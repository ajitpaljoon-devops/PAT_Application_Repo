rgs1 = {
  test = {
    rg_name  = "PATrg"
    location = "centralindia"

  }
}

vnet1 = {
  test = {
    rg_name       = "PATrg"
    vnet_name     = "PATvnet"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]
  }
}

snet1 = {
  test = {
    vnet_name        = "PATvnet"
    rg_name          = "PATrg"
    subnet_name      = "frontend"
    address_prefixes = ["10.0.0.0/24"]
  }

  test2 = {
    vnet_name        = "PATvnet"
    rg_name          = "PATrg"
    subnet_name      = "backend"
    address_prefixes = ["10.0.1.0/24"]
  }
}

pip1 = {
  test = {
    pip_name          = "PATpip"
    rg_name           = "PATrg"
    location          = "centralindia"
    allocation_method = "Static"

  }

}

nic1 = {
  test3 = {
    nic_name            = "PATnic"
    location            = "centralindia"
    rg_name = "PATrg"
    vm_name             = "PATvm"
    subnet_name = "frontend"
    vnet_name = "PATvnet"
    pip_name = "PATpip"
  }
}
