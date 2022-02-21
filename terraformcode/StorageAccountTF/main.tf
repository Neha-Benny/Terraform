resource "azurerm_resource_group" "example" {
    name = var.name
    location = var.location
}

resource "azurerm_storage_account" "example" {
    name = var.accountname
    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    account_tier = var.account_tier
    account_replication_type = var.account_replication_type
}
