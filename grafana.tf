resource "docker_container" "grafana" {
  name  = "grafana-${terraform.workspace}"
  image = "grafana/grafana:main-ubuntu"

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["app1"]
  }
  networks_advanced {
    name    = docker_network.monitor_net.name
    aliases = ["app1"]
  }

  ports{
    internal = 3000
    external = var.grafana_ports_external[terraform.workspace]
  }
}
