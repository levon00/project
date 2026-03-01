variable "name" { type = string }
variable "location" { type = string }
variable "rg_name" { type = string }
variable "container_name" { type = string }
variable "sku" { type = string }
variable "dns_name_label" { type = string }
variable "login_server" { type = string }
variable "docker_image" { type = string }
variable "redis_hostname_value" { type = string }
variable "redis_key_value" { type = string }
variable "admin_username" { type = string }
variable "admin_password" {
  type      = string
  sensitive = true
}
variable "tags" { type = map(string) }