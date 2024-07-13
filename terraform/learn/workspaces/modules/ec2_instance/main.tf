provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "webserv" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = var.ssh_key_value
  subnet_id = var.subnet_id_value
  associate_public_ip_address = true
  security_groups = [var.security_group_name_value]
  # = [ data.aws_security_group.linux, data.aws_security_group.fe ]
  vpc_security_group_ids = [
    #data.aws_security_group.fe.id,
    data.aws_security_group.linux.id
  ]
  
}