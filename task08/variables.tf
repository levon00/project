variable "prefix" {
  type        = string
  description = "The prefix of name more names"
}
variable "location" {
  type = string
  description = "location of resources"
}
variable "sku" {
  type        = list(string)
  description = "The SKU types."
}

variable "sku_family" {
  type        = string
  description = "The SKU family type"
}

variable "redis_key" {
  type        = string
  description = "Redis Primary key"
}

variable "redis_hostname" {
  type        = string
  description = "redis_hostname"
}

variable "aksP_name" {
  type        = string
  description = "AKS default node pool name"
}

variable "aksP_size" {
  type        = string
  description = "AKS default node pool instance node size"
}

variable "aksP_type" {
  type        = string
  description = "AKS default node pool os disk type"
}

variable "tags" {
  type        = map(string)
  description = "tags"
}