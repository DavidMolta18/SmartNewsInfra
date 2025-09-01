variable "project" {
  description = "ID del proyecto de GCP donde se creará el repositorio de Artifact Registry"
  type        = string
}

variable "region" {
  description = "Región de GCP donde se creará el repositorio"
  type        = string
}

variable "repo_name" {
  description = "Nombre del repositorio de Artifact Registry"
  type        = string
}
