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
