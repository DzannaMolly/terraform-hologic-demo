variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_name_prefix" {
  type        = string
  default     = "holx"
  description = "Resource name prefix which can be overwritten"
}

variable "disaster_recovery_copies" {
  type        = number
  default     = 1
  description = "Disaster recovery copies which value can be overwritten"
}
