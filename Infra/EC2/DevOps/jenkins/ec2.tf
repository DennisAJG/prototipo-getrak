resource "aws_instance" "server_ubuntu" {
  ami                  = data.aws_ami.getrak_ami.id
  instance_type        = var.instance_type_devops
  subnet_id            = var.subnets_public_1
  key_name             = "project-aws"
  associate_public_ip_address = true
  #iam_instance_profile = "AmazonSSMManagedInstanceCore"
  #vpc_security_group_ids = [ aws_security_group.sg_project_aws.id ]
  #security_groups = [ aws_security_group.sg_project_aws.name ]
  tags = {
    Name               = var.server_name
    Projeto            = var.project_name
    ScheduledStartStop = "False"
    DNS                = "sem DNS"
    Ansible            = "False"
    ExtendVolume       = "true"
  }

}


