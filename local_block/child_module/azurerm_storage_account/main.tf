
resource "azurerm_storage_account" "cth-prod-storage" {
    for_each = var.cth-storage

  name                     = each.value.name
  location                 = each.value.location
   resource_group_name      = each.value.resource_group_name
  account_tier             =each.value.account_tier
  account_replication_type =each.value.account_replication_type

  tags = local.comman_tags

}

locals {
  comman_tags={
  Environment   =  var.Environment
    Project       = var.Project
    Application   = var.Application
    Owner         = var.Owner
    CostCenter    = var.CostCenter
    Department    = var.Department
    CreatedBy     = var.CreatedBy
    ManagedBy     = var.ManagedBy
  }
}
