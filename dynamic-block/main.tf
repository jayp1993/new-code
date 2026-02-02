
variable "subnets" {
  
}

resource "azurerm_resource_group" "tiktok-rg" {
  name="tiktok-rg"
  location="Central India"
}
resource "azurerm_virtual_network" "tiktok_vnet" {
  name                = "tiktok-vnet"
  location            = azurerm_resource_group.tiktok-rg.location
  resource_group_name = azurerm_resource_group.tiktok-rg.name
  address_space       = ["10.10.0.0/16"]

   dynamic "subnet" {
    for_each = var.subnets
    content {
       name            = subnet.value.subnet_name
    address_prefixes = subnet.value.subnet_address
    }

}
}