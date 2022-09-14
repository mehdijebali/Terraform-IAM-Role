#Create AWS S3 Bucket

resource "aws_s3_bucket" "levelup-s3bucket" {
  bucket = var.S3_BUCKET_NAME
  
  tags = {
    Name = var.S3_BUCKET_NAME
  }
}

