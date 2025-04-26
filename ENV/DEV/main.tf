module "jabalpur_RG" {
  source = "../Module/RG"
  rg     = var.jbprg
}

module "jabalpur_vnet" {
  depends_on = [module.jabalpur_RG]
  source     = "../Module/VNET"
  vnetjbp    = var.vjbp

}

module "jabalpur_subnet" {
  depends_on = [module.jabalpur_vnet]
  source     = "../Module/SUBNET"
  subnetjbp  = var.vjbp_subnet

}

module "jabalpur_nic" {
  depends_on = [module.jabalpur_subnet]
  source     = "../Module/NIC"
  nicjbp     = var.jbprg_nic

}
