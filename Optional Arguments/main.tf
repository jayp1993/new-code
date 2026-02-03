variable "rgs" {
type =map(map(string))
}
variable "storages" {
type=map(
  object(
    {
 name                     = string
  resource_group_name      = string
  location                 = string
  account_tier             = string
  account_replication_type = string
local_user_enabled =optional(bool,true)
 table_encryption_key_type =optional(string,"Service")
    }
)
)
}


resource "azurerm_resource_group" "rg" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}


resource "azurerm_storage_account" "storage" {
  depends_on = [ azurerm_resource_group.rg ]
  for_each                 = var.storages
  name                     = each.value.name
  resource_group_name      = each.value. resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
local_user_enabled =each.value.local_user_enabled
 table_encryption_key_type    =each.value. table_encryption_key_type 
}



