terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  config = var.azure_config["default"]
}

# Call Resource Group child module
module "resource_group" {
  source = "../../module/resource_group"

  config = {
    "default" = {
      resource_group_name = local.config.resource_group_name
      location            = local.config.location
    }
  }
  common_tags = var.common_tags
}

# Call Storage Account child module
module "storage_account" {
  source = "../../module/storage_account"

  config = {
    "default" = {
      storage_account_name      = local.config.storage_account_name
      resource_group_name       = module.resource_group.resource_group_name
      location                  = local.config.location
      account_tier              = local.config.account_tier
      account_replication_type  = local.config.account_replication_type
    }
  }
  common_tags = var.common_tags

  depends_on = [module.resource_group]
}

# Call Container child module
module "container" {
  source = "../../module/container"

  config = {
    "default" = {
      container_name        = local.config.container_name
      storage_account_name  = module.storage_account.storage_account_name
      container_access_type = local.config.container_access_type
    }
  }

  depends_on = [module.storage_account]
}
