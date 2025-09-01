variable "project_id" {
  description = "ID del proyecto de GCP donde se crean los permisos"
  type        = string
}

variable "sa_name" {
  description = "Nombre del Service Account que se va a crear"
  type        = string
}
