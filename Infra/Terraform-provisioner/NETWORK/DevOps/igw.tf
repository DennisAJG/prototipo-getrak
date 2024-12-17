resource "aws_internet_gateway" "igw_project_getrak_devops" {
  vpc_id = aws_vpc.vpc_project_getrak_devops.id

  tags = {
    Name        = "Internet Gateway para o projeto getrak DevOps"
    Environment = "development"
  }
}