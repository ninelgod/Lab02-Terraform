resource "docker_container" "app1" {
  name  = "app1"
  image = "nginx:stable-perl"

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["app1"]
  }
  networks_advanced {
    name    = docker_network.persistence_net.name
    aliases = ["app1"]
  }

  depends_on = [docker_container.postgres, docker_container.redis]

  ports {
    internal = 80
    external = var.app1_ports_external[terraform.workspace]
  }
}

######################

resource "docker_container" "app2" {
  name  = "app2"
  image = "nginx:stable-perl"

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["app2"]
  }
  networks_advanced {
    name    = docker_network.persistence_net.name
    aliases = ["app2"]
  }

  depends_on = [docker_container.postgres, docker_container.redis]

  ports {
    internal = 80
    external = var.app2_ports_external[terraform.workspace]
  }
}

######################

resource "docker_container" "app3" {
  name  = "app3"
  image = "nginx:stable-perl"

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["app3"]
  }
  networks_advanced {
    name    = docker_network.persistence_net.name
    aliases = ["app3"]
  }
  
  depends_on = [docker_container.postgres, docker_container.redis]

  ports {
    internal = 80
    external = var.app3_ports_external[terraform.workspace]
  }
}
