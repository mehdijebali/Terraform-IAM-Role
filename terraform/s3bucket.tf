#Create AWS S3 Bucket

resource "aws_s3_bucket" "levelup-s3bucket" {
  bucket = local.S3_BUCKET_NAME

  tags = {
    Name = local.s3-tags
  }
}

