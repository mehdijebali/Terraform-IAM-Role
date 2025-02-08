variable "AWS_REGION" {
  type    = string
  default = "us-east-1"
}

variable "KEY_NAME" {
  type    = string
  default = "levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  type    = string
  default = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  type    = string
  default = "t2.micro"
}

variable "AVAILABILITY_ZONE" {
  type    = string
  default = "us-east-1a"
}

variable "ROLE_NAME" {
  type    = string
  default = "s3-levelupbucket-role"
}

variable "ROLE_POLICY_NAME" {
  type    = string
  default = "s3-levelupmybucket-role-policy"
}

variable "INSTANCE_NAME" {
  type    = string
  default = "tf_instance"
}

variable "SG_NAME" {
  type    = string
  default = "Allow_SSH"
}

variable "SG_DESCRIPTION" {
  type    = string
  default = "Allow SSH Connection"
}