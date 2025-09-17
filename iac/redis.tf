resource "docker_container" "redis" {
  name = "redis"
  image = "redis:8.2.1-bookworm"
  
  networks_advanced {
    name    = docker_network.persistence_net.name
    aliases = ["redis"]
  }
  ports {
    internal = 6379
    external = var.redis_ports_external[terraform.workspace]
  }
}