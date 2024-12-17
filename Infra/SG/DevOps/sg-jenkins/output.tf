output "sg_name" {
  description = "nome do security group criado."
  value       = aws_security_group.sg_jenkins_devops_security.name
}