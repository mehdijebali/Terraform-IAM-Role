variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMI_ID" {
  default = "ami-0b0ea68c435eb488d"
}

variable "KEY_NAME" {
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

variable "S3_BUCKET_ACL" {
  default = "private"
}

variable "INSTANCE_NAME" {
  default = "tf_instance"
}

variable "SG_NAME" {
  default = "Allow_SSH"
}

variable "SG_DESCRIPTION" {
  default = "Allow SSH Connection"
}