azure_config = {
  "default" = {
    resource_group_name      = "rg-production"
    location                 = "East US"
    storage_account_name     = "stprod"
    container_name           = "prod-container"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    container_access_type    = "private"
  }
}

common_tags = {
  Environment = "production"
  ManagedBy   = "Terraform"
  CostCenter  = "Engineering"
}
