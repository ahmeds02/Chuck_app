# variables.tf

variable "docker_host" {
  description = "The address of the Docker host"
  type        = string
}

variable "docker_image_name" {
  description = "The name of the Docker image for the Chuck Norris app"
  type        = string
}
