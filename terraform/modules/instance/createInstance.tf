
#Security Group for levelupvpc
resource "aws_security_group" "allow-levelup-ssh" {
  vpc_id      = var.SG_VPC_ID
  name        = var.SG_NAME
  description = var.SG_DESCRIPTION

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.SG_NAME}"
  }
}

resource "aws_instance" "MyFirstInstnace" {
  ami                    = var.AMI_ID
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.AVAILABILITY_ZONE
  iam_instance_profile   = var.INSTANCE_PROFILE
  vpc_security_group_ids = [aws_security_group.allow-levelup-ssh.id]
  monitoring             = true
  metadata_options {
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
  }

  tags = {
    Name = "${var.INSTANCE_NAME}"
  }

}

#Module Outputs
output "instance_id" {
  value = aws_instance.MyFirstInstnace.id
} 