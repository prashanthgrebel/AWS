provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "webapp" {
  tags = {
    "Name" = "webapp-1"
  }
  ami = data.aws_ami.redhat.id
  key_name =  data.aws_key_pair.ssh-key.key_name
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids = [
    data.aws_security_group.fe.id,
    data.aws_security_group.linux.id
  ]

  
}