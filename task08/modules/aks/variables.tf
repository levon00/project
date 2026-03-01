variable "name" { type = string }
variable "location" { type = string }
variable "rg_name" { type = string }
variable "node_pool_name" { type = string }
variable "node_count" { type = number }
variable "node_size" { type = string }
variable "os_disk_type" { type = string }
variable "tags" { type = map(string) }
variable "container_registry_id" { type = string }
variable "key_vault_id" { type = string }
variable "tenant_id" { type = string }
  