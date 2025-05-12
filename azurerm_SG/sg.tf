resource "azurerm_storage_account" "storage_account007" {
  for_each = var.storage_account007
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier 
  account_replication_type = each.value.account_replication_type
}