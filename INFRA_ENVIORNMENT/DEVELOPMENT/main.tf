module "resource_group" {
  source = "../../azurerm_RG"
  rgs    = var.rgs


}



module "storage_account" {
  depends_on = [ module.resource_group ]
  source             = "../../azurerm_SG"
  storage_account007 = var.storage_account001

}