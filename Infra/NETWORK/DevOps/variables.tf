variable "vpc_cidr_project_getrak_devops" {
  description = "CIDR da VPC para o project getrak devops"
  default     = "10.0.0.0/16"
}

variable "cidr_blocks_public_subnet_1_project_getrak_devops" {
  description = "CIDR da subnet publica 1 para o project getrak devops"
  default     = "10.0.1.0/24"
}

variable "cidr_blocks_private_subnet_1_project_getrak_devops" {
  description = "CIDR da subnet privada 1 para o project getrak devops"
  default     = "10.0.2.0/24"
}

variable "cidr_blocks_public_subnet_2_project_getrak_devops" {
  description = "CIDR da subnet publica 2 para o project getrak devops"
  default     = "10.0.3.0/24"
}

variable "cidr_blocks_private_subnet_2_project_getrak_devops" {
  description = "CIDR da subnet privada 2 para o project getrak devops"
  default     = "10.0.4.0/24"
}

variable "aws_default_region" {
  description = "Regiao padrao usado para o project getrak devops"
  default     = "us-east-1"
}

variable "project_getrak_devops" {
  description = "Projeto que sera usada para o tfstate da devops"
  default     = "getrak_devops"
}

