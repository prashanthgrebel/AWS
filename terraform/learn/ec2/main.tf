provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "webserver-1" {
  count = 2
  tags = {
    "Name" = "webserv-1${count.index}"
  }
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  key_name = var.aws_key
  subnet_id     = var.subnet_value
  security_groups = [var.aws_Linux_SG]
  associate_public_ip_address = true
  user_data = file("${path.module}/user-data.sh")
  
}