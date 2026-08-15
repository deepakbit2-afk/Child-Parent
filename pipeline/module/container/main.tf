locals {
  container_config = var.config["default"]
}

resource "azurerm_storage_container" "container" {
  name                  = local.container_config.container_name
  storage_account_id    = local.container_config.storage_account_id
  container_access_type = local.container_config.container_access_type
}
