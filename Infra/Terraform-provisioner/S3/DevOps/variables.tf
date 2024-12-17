variable "name_bucket_getrak_devops_tfstate" {
  description = "Nome da bucket que será usado para o tfstate da devops"
  default     = "getrak-devops-tfstate-s3-project"
}

variable "environment_getrak_devops_tfstate" {
  description = "Nome do environment que sera usada para o tfstate da devops"
  default     = "getrak_devops_tfstate_development"
}

variable "project_getrak_devops" {
  description = "Projeto que sera usada para o tfstate da devops"
  default     = "getrak_devops"
}