provider "aws" {
  region     = var.AWS_REGION
}

module "instance" {
  source = "./modules/instance"

  KEY_NAME = var.KEY_NAME
  PATH_TO_PUBLIC_KEY = var.PATH_TO_PUBLIC_KEY
  SG_VPC_ID = data.aws_vpc.default.id
  SG_NAME = var.SG_NAME
  SG_DESCRIPTION = var.SG_DESCRIPTION
  AMI_ID = var.AMI_ID
  INSTANCE_TYPE = var.INSTANCE_TYPE
  INSTANCE_NAME = var.INSTANCE_NAME
  AVAILABILITY_ZONE = var.AVAILABILITY_ZONE
  INSTANCE_PROFILE = aws_iam_instance_profile.s3-levelupbucket-role-instanceprofile.name
}