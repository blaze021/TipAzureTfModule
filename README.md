[0m[1mazurerm_resource_group.tip_cloud_agnostic_rg: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg][0m
[0m[1mazurerm_virtual_network.tip_vnet: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg/providers/Microsoft.Network/virtualNetworks/tip-vnet][0m
[0m[1mmodule.storage_account.azurerm_storage_account.tipcloudagstorage: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg/providers/Microsoft.Storage/storageAccounts/demotipstorage9553][0m
[0m[1mazurerm_private_dns_zone.tipcloudagdnszone: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net][0m
[0m[1mazurerm_subnet.tip_public_subnet: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg/providers/Microsoft.Network/virtualNetworks/tip-vnet/subnets/tip_public_subnet][0m
[0m[1mazurerm_subnet.tip_endpoint_subnet: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg/providers/Microsoft.Network/virtualNetworks/tip-vnet/subnets/tip_endpoint_subnet][0m
[0m[1mazurerm_private_dns_zone_virtual_network_link.tip_network_link: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net/virtualNetworkLinks/vnet_link][0m
[0m[1mazurerm_storage_container.container: Refreshing state... [id=https://demotipstorage9553.blob.core.windows.net/demo][0m
[0m[1mmodule.privateendpoint.azurerm_private_endpoint.tip_private_endpoint: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg/providers/Microsoft.Network/privateEndpoints/demo-private-endpoint][0m
[0m[1mazurerm_storage_blob.tip_blob_store: Refreshing state... [id=https://demotipstorage9553.blob.core.windows.net/demo/index.html][0m
[0m[1mmodule.privateendpoint.azurerm_private_dns_a_record.tip_dns_a: Refreshing state... [id=/subscriptions/963f627f-12a9-41e2-aba0-2f1968e6c1bf/resourceGroups/tipcloudagnosticrg/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net/A/demostorage9553][0m

[0m[1m[32mNo changes.[0m[1m Your infrastructure matches the configuration.[0m

[0mTerraform has compared your real infrastructure against your configuration
and found no differences, so no changes are needed.
[0m[1m[32m
Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
[0m[0m[1m[32m
Outputs:

[0mblob_name = "index.html"
dns_a_record = "demostorage9553.privatelink.blob.core.windows.net."
primary_connection_string = <sensitive>
storage_account_id = <sensitive>
storage_account_url = "https://demotipstorage9553.blob.core.windows.net/demo/index.html"
storage_container_name = "demo"
storage_primary_access_key = <sensitive>