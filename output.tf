output "dns_a_record" {
  value = module.privateendpoint.dns_a_record
}

output "primary_connection_string" {
  value     = module.storage_account.primary_connection_string
  sensitive = true
}

output "storage_account_id" {
  value     = module.storage_account.storage_account_id
  sensitive = true
}


output "storage_primary_access_key" {
  value     = module.storage_account.primary_access_key
  sensitive = true
}

output "storage_account_url" {
  value = azurerm_storage_blob.tip_blob_store.url
}

output "storage_container_name" {
  value = azurerm_storage_container.container.name
}

output "blob_name" {
  value = azurerm_storage_blob.tip_blob_store.name
}