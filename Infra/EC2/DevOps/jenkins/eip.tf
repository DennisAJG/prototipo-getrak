# Recurso para criar um Elastic IP
resource "aws_eip" "elastic_ip" {
instance = aws_instance.server_ubuntu.id
domain = "vpc"
tags = {
  Name = "getrak-elastic-ip",
}
}

# Associação do Elastic IP à instância EC2
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.server_ubuntu.id
  allocation_id = aws_eip.elastic_ip.id
}