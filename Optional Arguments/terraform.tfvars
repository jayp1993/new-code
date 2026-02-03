rgs = {
  rg1 = {
    name     = "tiktok-rg"
    location = "Central India"
  }
}

storages = {
  storage-netflix = {
     account_tier     = "Standard"
   name   = "tiktokstorage2034"
    resource_group_name ="tiktok-rg"
    location            = "Central India"
  account_replication_type  = "LRS"
  local_user_enabled=false
  table_encryption_key_type= "Service"
  
  }

  storage-amazon-prime = {
     account_tier     = "Standard"
   name   = "tiktokstorage2034"
    resource_group_name ="tiktok-rg"
    location            = "Central India"
  account_replication_type  = "LRS"
  local_user_enabled=false
 
  }
}
