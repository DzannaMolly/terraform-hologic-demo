variable "name_prefix" {
  type        = string
  default     = "101-cosmos-db-aad-rbac"
  description = "Prefix for resource group name"
}

variable "location" {
  type        = string
  default     = "westus"
  description = "Resource group location"
}

variable "cosmosdb_account_name" {
  type        = string
  default     = "default-account-name"
  description = "Cosmos db account name"
}

variable "cosmosdb_account_location" {
  type        = string
  default     = "westus"
  description = "Cosmos db account location"
}

variable "cosmosdb_sqldb_name" {
  type        = string
  default     = "default-sqldb-name"
  description = "value"
}

variable "msi_id" {
  type        = string
  default     = null
  description = "If you're executing the test with user assigned identity, please pass the identity principal id to this variable."
}


variable "throughput" {
  type        = number
  default     = 400
  description = "Cosmos db database throughput"
  validation {
    condition     = var.throughput >= 400 && var.throughput <= 1000000
    error_message = "Cosmos db manual throughput should be equal to or greater than 400 and less than or equal to 1000000."
  }
  validation {
    condition     = var.throughput % 100 == 0
    error_message = "Cosmos db throughput should be in increments of 100."
  }
}

variable "sql_container_name" {
  type        = string
  default     = "default-sql-container-name"
  description = "SQL API container name."
}
