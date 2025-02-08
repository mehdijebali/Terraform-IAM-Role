locals {
  S3_BUCKET_NAME = "demo-terraform-bucket-mj"

  s3-tags = {
    Name = local.S3_BUCKET_NAME
  }
}