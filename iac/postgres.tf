resource "docker_container" "postgres" {
  name = "postgres"
  image = "postgres:13.22-bookworm"
  
  networks_advanced {
    name    = docker_network.persistence_net.name
    aliases = ["postgres"]
  }
  ports {
    internal = 5432
    external = var.postgres_ports_external[terraform.workspace]
  }

  env = [
    "POSTGRES_USER=user",
    "POSTGRES_PASSWORD=12345",
    "POSTGRES_DB=lab02",
  ]
}