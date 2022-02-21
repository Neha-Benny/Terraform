data "azurerm_app_service_plan" "this" {
    name = var.planname
    resource_group_name = var.planrg
}

resource "azurerm_app_service" "this" {
    name = var.appname
    resource_group_name = var.resource_group_name
    location = "East US"
    app_service_plan_id = data.azurerm_app_service_plan.this.id               
    site_config {
    linux_fx_version= "DOCKER|rkudache31/djangowebnew"  
    }
    
     app_settings = {
    "WEBSITES_PORT" = "8000"
  }
}