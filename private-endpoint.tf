module "privateendpoint" {
  source = "./privateendpoint/"

  resource_group_name = azurerm_resource_group.tip_cloud_agnostic_rg.name
  location            = azurerm_resource_group.tip_cloud_agnostic_rg.location
  name                = "demo"

  subnet_id                        = azurerm_subnet.tip_endpoint_subnet.id
  private_link_enabled_resource_id = module.storage_account.storage_account_id
  private_dns_zone_name            = azurerm_private_dns_zone.tipcloudagdnszone.name
  subresource_names                = ["blob"]

  depends_on = [
    azurerm_private_dns_zone.tipcloudagdnszone
  ]
}