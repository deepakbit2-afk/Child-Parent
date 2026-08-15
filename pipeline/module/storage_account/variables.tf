variable "config" {
  description = "Storage Account configuration"
  type = map(object({
    storage_account_name      = string
    resource_group_name       = string
    location                  = string
    account_tier              = string
    account_replication_type  = string
  }))
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
  default     = {}
}
