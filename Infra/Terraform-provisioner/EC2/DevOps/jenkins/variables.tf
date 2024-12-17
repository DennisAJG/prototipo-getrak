variable "instance_type_devops" {
  description = "tipo de instancia usado para projetos devops"
  default     = "t2.micro"
}

variable "server_name" {
  description = "Nome do servidor"
  default     = "devops_jenkins_server"
}

variable "project_name" {
  description = "Projeto usado para subir os recursos"
  default     = "project_getrak"
}

variable "subnets_public_1" {
  description = "subnet publica usado para o projeto"
  default     = "subnet-052e2e98219befc36"
}