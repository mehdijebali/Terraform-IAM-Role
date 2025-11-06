variable "AWS_REGION" {
  type        = string
  description = "The region where resources are deployed"
  default     = "us-east-1"
}

variable "INSTANCE_TYPE" {
  type        = string
  description = "AWS Instance type"
  default     = "t2.micro"
}

variable "AVAILABILITY_ZONE" {
  type        = string
  description = "Availability Zone where instances is deployed"
  default     = "us-east-1a"
}

variable "ROLE_NAME" {
  type        = string
  description = "S3 Role Name"
  default     = "s3-levelupbucket-role"
}

variable "ROLE_POLICY_NAME" {
  type        = string
  description = "S3 Policy Name"
  default     = "s3-levelupmybucket-role-policy"
}

variable "INSTANCE_NAME" {
  type        = string
  description = "EC2 Instance Name"
  default     = "tf_instance"
}

variable "INSTANCE_SUBNET_ID" {
  type        = string
  description = "EC2 Instance Subnet ID"
  default     = "subnet-04b04399210978637"
}

variable "SG_NAME" {
  type        = string
  description = "Security Group Name"
  default     = "s3-client-sg"
}

variable "SG_DESCRIPTION" {
  type        = string
  description = "Security Group Description"
  default     = "Security for s3 client (ec2)"
}
