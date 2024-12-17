output "ip_sever" {
  description = "ip publico elastic do servidor"
  value       = aws_eip.elastic_ip_project_getrak.public_ip
}

output "instance_type" {
  description = "tipo de instance atribuida no servidor"
  value       = aws_instance.sever_jenkins_project_devops_getrak.instance_type
}

output "key_name_ssh" {
  description = "chave ssh que será usado para o acesso a máquina "
  value       = aws_instance.sever_jenkins_project_devops_getrak.key_name
}


output "security_group_id" {
  description = "id da security group"
  value       = data.terraform_remote_state.sg_project_getrak_devops_remote.outputs.sg_jenkins_security_project_getrak
}
