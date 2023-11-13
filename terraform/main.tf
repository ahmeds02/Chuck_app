
provider "docker" {
  host = var.docker_host
}

resource "docker_image" "chuck_app" {
  name         = var.chuck_image
  pull_triggers = ["always"]
}

resource "docker_container" "chuck_app" {
  name  = "chuck-norris-app"
  image = docker_image.chuck_app.latest

  ports {
    internal = 5000
    external = 5000
  }

  restart = "always"
}
