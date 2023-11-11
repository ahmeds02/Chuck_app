# outputs.tf

output "app_url" {
  value = "http://${docker_container.chuck_norris_app.network_settings.0.ip_address}:5000"
}
