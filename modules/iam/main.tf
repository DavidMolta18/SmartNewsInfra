resource "google_service_account" "sa" {
    account_id   = var.sa_name
      display_name = "Service Account for Cloud Run"
}

resource "google_project_iam_member" "sa_artifact" {
    project = var.project_id
      role    = "roles/artifactregistry.reader"
        member  = "serviceAccount:${google_service_account.sa.email}"
}

resource "google_project_iam_member" "sa_vertex" {
    project = var.project_id
      role    = "roles/aiplatform.user"
        member  = "serviceAccount:${google_service_account.sa.email}"
}

output "sa_email" {
    value = google_service_account.sa.email
}

