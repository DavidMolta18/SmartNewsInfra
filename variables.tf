variable "project_id" {
  type    = string
  default = "pivotal-mile-470503-n8"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "service_name" {
  type    = string
  default = "smartnewsapi"
}

variable "image_url" {
  type    = string
  default = ""
}

variable "qdrant_url" {
  type    = string
  default = ""
}

variable "qdrant_api_key" {
  type    = string
  default = ""
}
