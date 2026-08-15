variable "config" {
  description = "Resource Group configuration"
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
  default     = {}
}
