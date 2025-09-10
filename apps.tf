resource "docker_image" "app1_img" {
  name = "app1:latest"
  build {
    context = "${path.module}/apps/app1"
  }
}

resource "docker_container" "app1" {
  name  = "app1"
  image = docker_image.app1_img.image_id

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["app1"]
  }

  depends_on = [docker_container.postgres, docker_container.redis]

  ports {
    internal = 3000
    external = 3001
  }
}


resource "docker_image" "app2_img" {
  name = "app2:latest"
  build {
    context = "${path.module}/apps/app2"
  }
}

resource "docker_container" "app2" {
  name  = "app2"
  image = docker_image.app2_img.image_id

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["app2"]
  }

  depends_on = [docker_container.postgres, docker_container.redis]

  ports {
    internal = 3000
    external = 3002
  }
}

resource "docker_image" "app3_img" {
  name = "app3:latest"
  build {
    context = "${path.module}/apps/app3"
  }
}

resource "docker_container" "app3" {
  name  = "app3"
  image = docker_image.app3_img.image_id

  networks_advanced {
    name    = docker_network.app_net.name
    aliases = ["app3"]
  }

  depends_on = [docker_container.postgres, docker_container.redis]

  ports {
    internal = 3000
    external = 3003
  }
}
