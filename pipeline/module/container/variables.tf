variable "config" {
  description = "Storage Container configuration"

  type = map(object({
    container_name        = string
    storage_account_id     = string
    container_access_type = string
  }))
}