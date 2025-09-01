terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  backend "gcs" {
    bucket = "smartnewsapi-tfstate"   # crea este bucket en GCP una vez
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
