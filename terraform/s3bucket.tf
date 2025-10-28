#Create AWS S3 Bucket

resource "aws_s3_bucket" "levelup-s3bucket" {
  bucket = local.S3_BUCKET_NAME
  
  tags = local.s3-tags
}

resource "aws_s3_bucket_versioning" "levelup-s3bucketversioning" {
  bucket = aws_s3_bucket.levelup-s3bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}