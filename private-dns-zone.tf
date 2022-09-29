resource "azurerm_private_dns_zone" "tipcloudagdnszone" {
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = azurerm_resource_group.tip_cloud_agnostic_rg.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "tip_network_link" {
  name                  = "vnet_link"
  resource_group_name   = azurerm_resource_group.tip_cloud_agnostic_rg.name
  private_dns_zone_name = azurerm_private_dns_zone.tipcloudagdnszone.name
  virtual_network_id    = azurerm_virtual_network.tip_vnet.id
}