
data "azurerm_resource_group" "example" {
  name     =  var.stgname

}

module "webapp" {
  source = "./appservice/"
  planname = var.planname
  planrg  = var.planrg
  appname = var.appname
  resource_group_name =var.resource_group_name
}