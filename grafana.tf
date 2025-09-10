resource "docker_container" "grafana" {
  name  = "grafana-${terraform.workspace}"
  image = "grafana/grafana:main-ubuntu"
  ports{
    internal = 3000
    external = var.grafana_ports_external[terraform.workspace]
  }
}
