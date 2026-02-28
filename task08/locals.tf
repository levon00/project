locals {
  rg_name         = format("%s-rg", var.prefix)
  redis_name      = format("%s-redis", var.prefix)
  keyvault_name   = format("%s-kv", var.prefix)
  docker_img_name = format("%s-app", var.prefix)
  aci_name        = format("%s-ci", var.prefix)
  aks_name        = format("%s-aks", var.prefix)
  acr_name        = format("%scr", replace(var.prefix, "-", ""))
}