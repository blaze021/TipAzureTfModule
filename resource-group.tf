resource "azurerm_resource_group" "tip_cloud_agnostic_rg" {
  name     = var.resource_group_name
  location = var.resource_location
}