variable "azure_config" {
  description = "Azure resources configuration"
  type = map(object({
    resource_group_name      = string
    location                 = string
    storage_account_name     = string
    container_name           = string
    account_tier             = string
    account_replication_type = string
    container_access_type    = string
  }))
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
  default = {
    Environment = "production"
    ManagedBy   = "Terraform"
  }
}
