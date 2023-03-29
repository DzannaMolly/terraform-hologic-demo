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
  type        = map(string)
  default     = {diag_sa_dr1 = "mydiag1", diag_sa_dr2 = "mydiag2", diag_sa_dr3  = "mydiag3"}
  description = "Map of names for each DR copy of diag storage account "
}

variable "nic_vm" {
  type        = map(string)
  default     = {nic_lin = "myLinNIC", nic_win = "myWinNIC", nic_sg  = "mySgNIC"}
  description = "Map of names for NIC used for the VMs"
}
