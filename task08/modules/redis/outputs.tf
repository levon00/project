output "redis_hostname" {
  value = azurerm_key_vault_secret.redis_hostname.name
}

output "redis_key" {
  value = azurerm_key_vault_secret.redis_key.name
}