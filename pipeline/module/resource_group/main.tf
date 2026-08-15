locals {
  rg_config = var.config["default"]
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_config.resource_group_name
  location = local.rg_config.location

  tags = merge(
    var.common_tags,
    {
      "Name" = local.rg_config.resource_group_name
    }
  )
}
