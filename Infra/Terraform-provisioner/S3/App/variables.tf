variable "name_bucket_getrak_app_tfstate" {
  description = "Nome da bucket que será usado para o tfstate da app"
  default     = "getrak-app-tfstate-s3-project"
}

variable "environment_getrak_app_tfstate" {
  description = "Nome do environment que sera usada para o tfstate da app"
  default     = "getrak_app_tfstate_development"
}

variable "project_getrak_app" {
  description = "Projeto que sera usada para o tfstate da app"
  default     = "getrak_app"
}