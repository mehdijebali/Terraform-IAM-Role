locals {
  S3_BUCKET_NAME = "demo-terraform-bucket-mj"
  s3-tags = {
    Name = local.S3_BUCKET_NAME
  }
  default-tags = {
    Stack       = "IAM-ROLE",
    Environment = "Production"
  }
  vpce_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:*"
        Resource = [
          "arn:aws:s3:::${local.S3_BUCKET_NAME}",
          "arn:aws:s3:::${local.S3_BUCKET_NAME}/*"
        ]
      },
    ]
  })
  s3_bucket_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "AllowVPCEOnly"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:*"
        Resource = [
          "arn:aws:s3:::${local.S3_BUCKET_NAME}",
          "arn:aws:s3:::${local.S3_BUCKET_NAME}/*"
        ]
        Condition = {
          StringEquals = {
            "aws:SourceVpce" = "${aws_vpc_endpoint.s3_gateway.id}"
          }
        }
      }
    ]
  })
  s3_access_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:*"
        ],
        "Resource" : [
          "arn:aws:s3:::${local.S3_BUCKET_NAME}",
          "arn:aws:s3:::${local.S3_BUCKET_NAME}/*"
        ]
      }
    ]
  })
}