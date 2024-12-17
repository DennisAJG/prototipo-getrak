resource "aws_security_group" "sg_jenkins_devops_security_project_getrak" {
  name   = var.project_getrak_devops
  vpc_id = data.terraform_remote_state.network_project_getrak_devops_remote.outputs.vpc_id_project_getrak_devops


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    description = "port-all"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name    = "${var.sg_name}"
    Projeto = "${var.project_getrak_devops}"
  }

}