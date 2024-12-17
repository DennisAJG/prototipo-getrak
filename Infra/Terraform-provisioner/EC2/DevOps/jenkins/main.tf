terraform {
  required_version = ">=1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }

  backend "s3" {
    bucket = "getrak-devops-tfstate-s3-project"
    key    = "getrak-devops/infra/ec2/jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "user-getrak"

  default_tags {
    tags = {
      owner      = "user-getrak"
      managed-by = "terraform-aws"
    }
  }
}