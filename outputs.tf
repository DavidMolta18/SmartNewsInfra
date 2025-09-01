output "cloud_run_url" {
  value = module.cloud_run.url
}

output "cloud_run_url" {
  description = "URL pública del servicio en Cloud Run"
  value       = module.cloud_run.url
}

output "image_deployed" {
  description = "Imagen de Docker usada en el despliegue"
  value       = var.image_url
}
