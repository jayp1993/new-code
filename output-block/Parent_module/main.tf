
module "rg" {
  source              = "../Child_Module/Azurerm_Resource_group"
  resource_group_name = "tiptop-rg"
  location            = "centralindia"
  
}

module "storage_account" {
  source                   = "../Child_Module/Azurerm_Storage_Account"
  storage_account_name     = "cloudbatch08storage"
  resource_group_name      = module.rg.tiptop-name
  location                 = module.rg.tiptop-location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

module "container" {
  source                = "../Child_Module/azurerm_blob_container"
  container_name        = "cloudbatch08container"
  storage_account_id    = module.storage_account.tiktok-storage_account_id
  container_access_type = "private"
}

output "resource_group_name" {
  value = module.rg.tiptop-name
}