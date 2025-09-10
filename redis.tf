resource "docker_container" "redis" {
  name = "redis"
  image = "redis:latest"
  
  networks_advanced {
    name    = docker_network.persistence_net.name
    aliases = ["redis"]
  }

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["redis"]
  }
  ports {
    internal = 6379
    external = 6379
  }
}