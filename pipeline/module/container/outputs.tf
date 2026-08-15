output "container_id" {
  description = "ID of the created container"
  value       = azurerm_storage_container.container.id
}

output "container_name" {
  description = "Name of the created container"
  value       = azurerm_storage_container.container.name
}
