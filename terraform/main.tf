# main.tf

provider "docker" {
  host = var.docker_host
}

resource "docker_image" "chuck_norris_app" {
  name         = var.docker_image_name
  pull_triggers = ["always"]
}

resource "docker_container" "chuck_norris_app" {
  name  = "chuck-norris-app"
  image = docker_image.chuck_norris_app.latest

  ports {
    internal = 5000
    external = 5000
  }

  restart = "always"
}
