resource "docker_container" "postgres" {
  name = "postgres"
  image = "postgres:13.22-bookworm"

  networks_advanced {
    name    = docker_network.persistence_net.name
    aliases = ["postgres"]
  }

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["postgres"]
  }
  ports {
    internal = 5432
    external = 5432
  }
}