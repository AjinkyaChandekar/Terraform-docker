provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami             = "ami-0e472ba40eb589f49"
  key_name        = var.key_name
  instance_type   = var.instance_type
  security_groups = [var.security_group]

  tags = {
    Name = "Server"
  }
}

output "ec2_public_ip" {
	value = aws_instance.ec2.public_ip
	sensitive =  true
}

resource "aws_iam_user" "user-00714" {
	name = "ajinkya"
	path = "/"
	tags = {
    tag-key = "ajinkya-00714"
  }
}
