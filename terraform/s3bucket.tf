#Create AWS S3 Bucket

resource "aws_s3_bucket" "levelup-s3bucket" {
  bucket = local.S3_BUCKET_NAME

  tags = local.s3-tags
}

# enable S3 Bucket Versionning to avoid Accidental Deletion
resource "aws_s3_bucket_versioning" "levelup-s3bucketversioning" {
  bucket = aws_s3_bucket.levelup-s3bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Create S3 Bucket Policy
resource "aws_s3_bucket_policy" "allow_vpce" {
  bucket = aws_s3_bucket.levelup-s3bucket.id
  policy = local.s3_bucket_policy
}

# Create VPC Endpoint for S3
resource "aws_vpc_endpoint" "s3_gateway" {
  vpc_id            = data.aws_vpc.default.id
  service_name      = "com.amazonaws.${var.AWS_REGION}.s3"
  vpc_endpoint_type = "Gateway"
  route_table_ids   = [data.aws_route_table.subnet_rtb.id] # Associate with the private subnet's route table

  # Policy to restrict access to a specific S3 bucket 
  policy = local.vpce_policy
}