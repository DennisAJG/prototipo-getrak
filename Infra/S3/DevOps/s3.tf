resource "aws_s3_bucket" "bucket_getrak_devops_tfstate" {
  bucket = var.name_bucket_getrak_devops_tfstate

  tags = {
    Name        = var.name_bucket_getrak_devops_tfstate
    Environment = var.environment_getrak_devops_tfstate
    Project     = var.project_getrak_devops

  }
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_block_getrak_devops_tfstate" {
  bucket = aws_s3_bucket.bucket_getrak_devops_tfstate.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_versioning" "bucket_versioning_getrak_devops_tfstate" {
  bucket = aws_s3_bucket.bucket_getrak_devops_tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}