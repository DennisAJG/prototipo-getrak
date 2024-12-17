# Recurso para criar um Elastic IP
resource "aws_eip" "elastic_ip_project_getrak" {
  instance = aws_instance.sever_jenkins_project_devops_getrak.id
  domain   = "vpc"
  tags = {
    Name = "getrak-elastic-ip",
  }
}

# Associação do Elastic IP à instância EC2
resource "aws_eip_association" "eip_association_project_getrak" {
  instance_id   = aws_instance.sever_jenkins_project_devops_getrak.id
  allocation_id = aws_eip.elastic_ip_project_getrak.id
}