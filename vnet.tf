resource "azurerm_virtual_network" "tip_vnet" {
  name                = "tip-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.tip_cloud_agnostic_rg.location
  resource_group_name = azurerm_resource_group.tip_cloud_agnostic_rg.name
}

resource "azurerm_subnet" "tip_public_subnet" {
  name                 = "tip_public_subnet"
  resource_group_name  = azurerm_resource_group.tip_cloud_agnostic_rg.name
  virtual_network_name = azurerm_virtual_network.tip_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "tip_endpoint_subnet" {
  name                 = "tip_endpoint_subnet"
  resource_group_name  = azurerm_resource_group.tip_cloud_agnostic_rg.name
  virtual_network_name = azurerm_virtual_network.tip_vnet.name
  address_prefixes     = ["10.0.2.0/24"]

  # enforce_private_link_endpoint_network_policies = true

  private_endpoint_network_policies_enabled = true
}