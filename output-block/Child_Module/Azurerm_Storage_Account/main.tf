variable "storage_account_name" {
  
}
variable "resource_group_name" {
  
}

variable "location" {
  
}

variable "account_tier" {
  
}

variable "account_replication_type" {
  
}

resource "azurerm_storage_account" "cth-storge" {
    name                     = var.storage_account_name
    resource_group_name      = var.resource_group_name
    location                 = var.location
    account_tier             = var.account_tier
    account_replication_type = var.account_replication_type
}

output "tiktok-storage_account_id" {
  value = azurerm_storage_account.cth-storge.id
}