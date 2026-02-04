module "rg-prod-cth" {
  source = "../../child_module/azurerm_resource_group"

  rgs = {
    rg-prod-cth-001 = {
      name     = "rg-prod-cth-003"
      location = "Central India"
    }
    rg-prod-cth-002 = {
      name     = "rg-prod-cth-002"
      location = "Central India"
    }
  }

  Environment = "prod"
  Project     = "ecommerce-app"
  Application = "payment-service"
  Owner       = "cloud-team"
  CostCenter  = "FIN-001"
  Department  = "IT"
  CreatedBy   = "jay praksh"
  ManagedBy   = "IaC"



}

module "storage" {
  source = "../../child_module/azurerm_storage_account"
  cth-storage = {
    storage-1 = {
      name                     = "cthstorage2345"
      location                 = "Central India"
      resource_group_name      = "rg-prod-cth-001"
      account_tier             = "Standard"
      account_replication_type = "LRS"
    }

  }
  Environment = "prod"
  Project     = "ecommerce-app"
  Application = "payment-service"
  Owner       = "cloud-team"
  CostCenter  = "FIN-001"
  Department  = "IT"
  CreatedBy   = "likesh ji"
  ManagedBy   = "IaC"

}


