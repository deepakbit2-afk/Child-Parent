output "storage_account_id" {
  description = "ID of the created storage account"
  value       = azurerm_storage_account.sa.id
}

output "storage_account_name" {
  description = "Name of the created storage account"
  value       = azurerm_storage_account.sa.name
}

output "primary_blob_endpoint" {
  description = "Primary blob endpoint of the storage account"
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}
