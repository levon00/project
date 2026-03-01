resource "azurerm_container_group" "container_group" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  os_type             = "Linux"
  sku                 = var.sku
  ip_address_type     = "Public"
  dns_name_label      = var.dns_name_label

  image_registry_credential {
    server   = var.login_server
    username = var.admin_username
    password = var.admin_password
  }
  container {
    name   = var.container_name
    image  = "${var.login_server}/${var.docker_image}:latest"
    cpu    = "1.0"
    memory = "1.5"

    ports {
      port     = "80"
      protocol = "TCP"
    }
    environment_variables = {
      "CREATOR"        = "ACI"
      "REDIS_PORT"     = "6380"
      "REDIS_SSL_MODE" = "True"
    }
    secure_environment_variables = {
      "REDIS_URL" = var.redis_hostname_value
      "REDIS_PWD" = var.redis_key_value
    }
  }

  tags = var.tags
}