variable "AWS_REGION" {
default = "us-east-1"
}

variable "AMI_ID" {
  default = "ami-0b0ea68c435eb488d"
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

variable "EBS_SIZE" {
  default = 5
}

variable "EBS_TYPE" {
  default = "gp2"
}

variable "ROLE_NAME" {
  default = "s3-levelupbucket-role"
}

variable "ROLE_POLICY_NAME" {
  default = "s3-levelupmybucket-role-policy"
}

variable "S3_BUCKET_NAME" {
  default = "levelup-bucket-141"
}

variable "S3_BUCKET_ACL" {
  default = "private"
}