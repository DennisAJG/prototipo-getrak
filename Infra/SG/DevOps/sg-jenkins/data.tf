data "terraform_remote_state" "vpc_cidr_project_getrak_devops_remote" {
  backend = "s3"
  config = {
    bucket = "getrak-devops-tfstate-s3-project"
    key    = "getrak-devops/infra/network/terraform.tfstate"
    region = "us-east-1"
  }
}