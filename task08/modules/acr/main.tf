resource "azurerm_container_registry" "acr" {
  name = var.acr_name
  location = var.location
  resource_group_name = var.rg_name
  sku = var.sku
}

resource "azurerm_container_registry_task" "name" {
  name = var.img_task_name
  container_registry_id = azurerm_container_registry.acr.id
  platform {os = "Linux"}
  docker_step {
    dockerfile_path = "task08/application/Dockerfile"
    context_path = ""
  }
}