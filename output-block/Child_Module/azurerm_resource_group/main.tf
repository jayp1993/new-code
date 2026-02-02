variable "resource_group_name" {
  
}

variable "location" {
  
}
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

output "tiptop-name" {
  value = azurerm_resource_group.resource_group.name
}

output "tiptop-location" {
  value = azurerm_resource_group.resource_group.location
}