prefix                     = "cmtr-0sj5vwga-mod8"
location                   = "eastus"
sku                        = ["Basic", "standard", "Standard"]
redis_capacity             = 2
redis_sku_family           = "C"
secret_name_redis_key      = "redis-primary-key"
secret_name_redis_hostname = "redis-hostname"
aks_node_pool_name         = "system"
aks_node_pool_size         = "Standard_D2ads_v6"
aks_node_pool_count        = 1
aks_node_pool_os_disk_type = "Ephemeral"
tags = {
  "Creator" = "levon_khalatyan@epam.com"
}