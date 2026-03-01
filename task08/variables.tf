variable "prefix" {
  type        = string
  description = "The prefix of name more names"
}
variable "location" {
  type        = string
  description = "location of resources"
}
variable "sku" {
  type        = list(string)
  description = "The SKU types."
}

variable "redis_capacity" {
  type        = number
  description = "Redis capacity number"
}

variable "redis_sku_family" {
  type        = string
  description = "The SKU family type"
}

variable "secret_name_redis_key" {
  type        = string
  description = "Redis Primary key"
}

variable "secret_name_redis_hostname" {
  type        = string
  description = "redis_hostname"
}

variable "aks_node_pool_name" {
  type        = string
  description = "AKS default node pool name"
}

variable "aks_node_pool_size" {
  type        = string
  description = "AKS default node pool instance node size"
}
variable "aks_node_pool_count" {
  type        = number
  description = "AKS default node pool instance count"
}

variable "aks_node_pool_os_disk_type" {
  type        = string
  description = "AKS default node pool os disk type"
}

variable "git_pat" {
  type        = string
  description = "The Personal access token for the repository"
}
variable "tags" {
  type        = map(string)
  description = "tags"
}