
resource "azurerm_resource_group" "name" {
    for_each = var.rgs
  name = each.value.name
  location=each.value.location

  tags=local.comman_tags
lifecycle {
 prevent_destroy=true
}
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
