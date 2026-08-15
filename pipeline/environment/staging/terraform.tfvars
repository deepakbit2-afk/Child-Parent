azure_config = {
  "default" = {
    resource_group_name      = "rg-staging"
    location                 = "East US"
    storage_account_name     = "ststaging"
    container_name           = "staging-container"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    container_access_type    = "private"
  }
}

common_tags = {
  Environment = "staging"
  ManagedBy   = "Terraform"
  CostCenter  = "Engineering"
}
