azure_config = {
  "default" = {
    resource_group_name      = "rg-preproduction"
    location                 = "East US"
    storage_account_name     = "stpreprod"
    container_name           = "preprod-container"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    container_access_type    = "private"
  }
}

common_tags = {
  Environment = "preproduction"
  ManagedBy   = "Terraform"
  CostCenter  = "Engineering"
}
