locals {
  sa_config = var.config["default"]
}

resource "azurerm_storage_account" "sa" {
  name                     = local.sa_config.storage_account_name
  resource_group_name      = local.sa_config.resource_group_name
  location                 = local.sa_config.location
  account_tier             = local.sa_config.account_tier
  account_replication_type = local.sa_config.account_replication_type

  tags = merge(
    var.common_tags,
    {
      "Name" = local.sa_config.storage_account_name
    }
  )
}
