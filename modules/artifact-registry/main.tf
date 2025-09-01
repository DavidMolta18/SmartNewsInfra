resource "google_artifact_registry_repository" "repo" {
  provider      = google
  project       = var.project
  location      = var.region
  repository_id = var.repo_name
  format        = "DOCKER"
}
output "repo_url" {
  value = "${var.region}-docker.pkg.dev/${var.project}/${var.repo_name}"
}
