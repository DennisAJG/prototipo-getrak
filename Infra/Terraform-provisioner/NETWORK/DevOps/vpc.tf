resource "aws_vpc" "vpc_project_getrak_devops" {
  cidr_block           = var.vpc_cidr_project_getrak_devops
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  instance_tenancy     = "default"

  tags = {
    Name = var.project_getrak_devops
  }
}