resource "docker_container" "app1" {
  name  = "app1"
  image = "nginx:1.29.1-perl"

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
  }
  volumes {
        host_path      = abspath("${path.module}/../h_volumes/app1")
        container_path = "/usr/share/nginx/html"
        read_only      = false
    }   
}

######################

resource "docker_container" "app2" {
  name  = "app2"
  image = "nginx:1.29.1-perl"

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
  }
  volumes {
        host_path      = abspath("${path.module}/../h_volumes/app2")
        container_path = "/usr/share/nginx/html"
        read_only      = false
    }   
}

######################

resource "docker_container" "app3" {
  name  = "app3"
  image = "nginx:1.29.1-perl"

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
  }
  volumes {
        host_path      = abspath("${path.module}/../h_volumes/app3")
        container_path = "/usr/share/nginx/html"
        read_only      = false
    }   

}
