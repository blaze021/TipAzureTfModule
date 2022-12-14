module "storage_account" {
  source = "./storageaccount"

  resource_group_name = azurerm_resource_group.tip_cloud_agnostic_rg.name
  location            = azurerm_resource_group.tip_cloud_agnostic_rg.location
  name                = "demo"
  # whitelist ip of machine from which terraform creating infra
  # else terraform apply will fail with 403
  white_list_ip = ["18.130.164.155","35.170.107.238","52.201.88.13"]
}

resource "azurerm_storage_container" "container" {
  name                  = "demo"
  storage_account_name  = module.storage_account.storage_account_name
  container_access_type = "private"
  depends_on = [
    module.storage_account
  ]
}

resource "azurerm_storage_blob" "tip_blob_store" {
  name = "index.html"
  storage_account_name = module.storage_account.storage_account_name
  storage_container_name = azurerm_storage_container.container.name
  type = "Block"
  source = "test.html"
}
