variable "AWS_REGION" {
default = "us-east-1"
}

variable "AMI_ID" {
  default = "ami-09d3b3274b6c5d4aa"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "AVAILABILITY_ZONE" {
  default = "us-east-1a"
}

variable "ROLE_NAME" {
  default = "s3-levelupbucket-role"
}

variable "ROLE_POLICY_NAME" {
  default = "s3-levelupmybucket-role-policy"
}

variable "S3_BUCKET_NAME" {
  default = "demo-terraform-bucket-mj"
}

variable "S3_BUCKET_ACL" {
  default = "private"
}

variable "INSTANCE_NAME" {
  default = "tf_instance"
}