provider "aws" {
  region = "us-east-1"
  
}


## Create EC2 Instance
#resource "aws_instance" "example" {
#  ami           = var.ami_id  # Replace with your desired AMI ID
#  instance_type = var.instance_type_value
#  subnet_id     = var.subnet_value
#  key_name = var.aws_key  
#  vpc_security_group_ids = [var.aws_Linux_SG]
#  associate_public_ip_address = true
#  
#
#  tags = {
#    Name = "ExampleInstance"
#  }
#}



resource "aws_instance" "webserver-1" {
  tags = {
    name = "webserv-1"
  }
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  key_name = var.aws_key
  subnet_id     = var.subnet_value
  security_groups = [var.aws_Linux_SG]
  #vpc_security_group_ids = [var.aws_Linux_SG]
  associate_public_ip_address = true

  

  
}