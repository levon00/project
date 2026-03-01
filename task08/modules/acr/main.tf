resource "azurerm_container_registry" "acr" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.sku
  tags                = var.tags
  admin_enabled       = true
}

resource "azurerm_container_registry_task" "img" {
  name                  = var.img_task_name
  container_registry_id = azurerm_container_registry.acr.id
  platform { os = "Linux" }
  docker_step {
    dockerfile_path      = "Dockerfile"
    context_path         = "https://github.com/levon00/task08.git#main:task08/application"
    context_access_token = var.git_pat
    image_names          = ["${var.image_name}:latest"]
  }
}

resource "azurerm_container_registry_task_schedule_run_now" "trigger" {
  container_registry_task_id = azurerm_container_registry_task.img.id
}