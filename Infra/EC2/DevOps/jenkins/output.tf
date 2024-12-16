output "ip_sever" {
  description = "ip publico elastic do servidor"
  value = aws_eip.elastic_ip.public_ip
}

output "instance_type" {
  description = "tipo de instance atribuida no servidor"
  value = aws_instance.server_ubuntu.instance_type
}

output "key_name_ssh" {
    description = "chave ssh que será usado para o acesso a máquina "
    value = aws_instance.server_ubuntu.key_name
}