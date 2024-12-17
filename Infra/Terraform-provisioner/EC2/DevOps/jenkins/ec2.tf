resource "aws_instance" "sever_jenkins_project_devops_getrak" {
  ami                         = data.aws_ami.getrak_ami_devops.id
  instance_type               = var.instance_type_devops
  subnet_id                   = data.terraform_remote_state.network_project_getrak_devops_remote.outputs.id_subnet_public_1_project_getrak_devops
  key_name                    = "project-aws"
  associate_public_ip_address = true
  #iam_instance_profile = "AmazonSSMManagedInstanceCore"
  vpc_security_group_ids = [data.terraform_remote_state.sg_project_getrak_devops_remote.outputs.sg_jenkins_security_project_getrak ]
  security_groups = [data.terraform_remote_state.sg_project_getrak_devops_remote.outputs.sg_jenkins_security_project_getrak]
  
  tags = {
    Name               = var.server_name
    Projeto            = var.project_name
    ScheduledStartStop = "False"
    DNS                = "sem DNS"
    Ansible            = "False"
    ExtendVolume       = "true"
  }

}


