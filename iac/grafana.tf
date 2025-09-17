resource "docker_container" "grafana" {
  name  = "grafana-${terraform.workspace}"
  image = "grafana/grafana:12.2.0-17660687647-ubuntu"

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["grafana"]
  }
  networks_advanced {
    name    = docker_network.monitor_net.name
    aliases = ["grafana"]
  }

  ports{
    internal = 3000
    external = var.grafana_ports_external[terraform.workspace]
  }
}