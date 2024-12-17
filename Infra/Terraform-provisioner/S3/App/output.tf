output "bucket_name_app_getrak_tfstate" {
  description = "output do nome da bucket que será usado para o tfstate das apps"
  value       = aws_s3_bucket.bucket_getrak_app_tfstate.id
}