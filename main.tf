module "artifact_registry" {
  source    = "./modules/artifact-registry"
  project   = var.project_id
  region    = var.region
  repo_name = "smartnewsapi"
}

module "iam" {
  source     = "./modules/iam"
  project_id = var.project_id
  sa_name    = "${var.service_name}-sa"
}

module "cloud_run" {
  source          = "./modules/cloud-run"
  project_id      = var.project_id
  region          = var.region
  service_name    = var.service_name
  image_url       = "${module.artifact_registry.repo_url}/smartnewsapi:latest"
  service_account = module.iam.sa_email
}
