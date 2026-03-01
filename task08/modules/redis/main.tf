resource "azurerm_redis_cache" "redis" {
  name                 = var.name
  location             = var.location
  resource_group_name  = var.rg_name
  capacity             = var.capacity
  family               = var.family
  sku_name             = var.sku_name
  non_ssl_port_enabled = false
  minimum_tls_version  = "1.2"
  tags                 = var.tags
}

resource "azurerm_key_vault_secret" "redis_hostname" {
  name         = var.redis_hostname_secret_name
  value        = azurerm_redis_cache.redis.hostname
  key_vault_id = var.key_vault_id
}

resource "azurerm_key_vault_secret" "redis_key" {
  name         = var.secret_name_redis_key
  value        = azurerm_redis_cache.redis.primary_access_key
  key_vault_id = var.key_vault_id
}