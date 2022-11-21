
resource "aws_key_pair" "levelup_key" {
    key_name = var.PATH_TO_PRIVATE_KEY
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

#Create AWS Instance
resource "aws_instance" "MyFirstInstnace" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  vpc_security_group_ids = [aws_security_group.allow-levelup-ssh.id]
  availability_zone = var.AVAILABILITY_ZONE
  key_name      = aws_key_pair.levelup_key.key_name
  
  iam_instance_profile = aws_iam_instance_profile.s3-levelupbucket-role-instanceprofile.name

  tags = {
    Name = "${var.INSTANCE_NAME}"
  }
}

output "public_ip" {
  value = aws_instance.MyFirstInstnace.public_ip 
}
