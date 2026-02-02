
resource "azurerm_resource_group" "rg" {
  for_each = var.rg_map
  name     = each.value.name
  location = each.value.location
}


resource "azurerm_storage_account" "storage" {
  for_each                 = var.storage_map
  name                     = each.value.name
  resource_group_name      = each.value. resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
local_user_enabled =each.value.local_user_enabled
table_encryption_key_type = each.value.table_encryption_key_type
}


