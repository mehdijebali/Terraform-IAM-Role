data "amazon-ami" "ubuntu" {
  filters = {
    name                = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
  most_recent = true
  owners      = ["099720109477"]
  region      = "us-east-1"
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "s3-client-${formatdate("YYYY-MM-DD-hh.mm.ss", timestamp())}"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami    = "${data.amazon-ami.ubuntu.id}"
  ssh_username  = "ubuntu"
}

build {
  sources = ["source.amazon-ebs.ubuntu"]

  provisioner "shell" {
    inline = ["sudo apt-get update -y"]
  }

  provisioner "ansible" {
    playbook_file = "./ansible/main.yml"
  }

}
