resource "google_cloud_run_service" "service" {
  name     = var.service_name
  location = var.region

  template {
    spec {
      service_account_name = var.service_account
      containers {
        image = var.image_url
        resources {
          limits = {
            memory = "512Mi"
            cpu    = "1"
          }
        }
        env {
          name  = "QDRANT_URL"
          value = "https://your-qdrant-instance" # o desde Secret Manager
        }
        env {
          name  = "GCP_PROJECT"
          value = var.project_id
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_member" "all_users" {
  service  = google_cloud_run_service.service.name
  location = var.region
  role     = "roles/run.invoker"
  member   = "allUsers"
}

output "url" {
  value = google_cloud_run_service.service.status[0].url
}
