#Roles to access the AWS S3 Bucket
resource "aws_iam_role" "s3-levelupbucket-role" {
  name               = var.ROLE_NAME
  assume_role_policy = file("./policies/s3clientrole.json")
}

#Policy to attach the S3 Bucket Role
resource "aws_iam_role_policy" "s3-levelupmybucket-role-policy" {
  name   = var.ROLE_POLICY_NAME
  role   = aws_iam_role.s3-levelupbucket-role.id
  policy = file("./policies/s3accesspolicy.json")
}

#Instance identifier
resource "aws_iam_instance_profile" "s3-levelupbucket-role-instanceprofile" {
  name = var.ROLE_NAME
  role = aws_iam_role.s3-levelupbucket-role.name
}