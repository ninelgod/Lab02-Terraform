resource "docker_container" "proxy" {
  name = "nginx-proxy"
  image = "nginx:1.29.1-perl"

  ports {
    external = var.proxy_ports_external[terraform.workspace]
    internal = 80
  }

  networks_advanced {
    name = docker_network.app_net.name
    aliases = ["proxy"]
  }

  depends_on = [
    docker_container.app1,
    docker_container.app2,
    docker_container.app3
  ]

    volumes {
        host_path      = abspath("${path.module}/../h_volumes/nginx_conf")
        container_path = "/etc/nginx/conf.d"
        read_only      = false
    }

    volumes {
        host_path      = abspath("${path.module}/../h_volumes/proxy_html")
        container_path = "/usr/share/nginx/html"
        read_only      = false
    }   

}