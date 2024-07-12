provider "aws" {
  region = "us-east-1"
  
}

locals {
}
resource "aws_instance" "webapp-dev-public" {
/* count = 2
  tags = {
    "Name" = "webapp-dev0${count.index}"
  }
  */
  ami = var.ami_id
  #instance_type = var.instance_type_list[0]  # type list
  instance_type = var.instance_type_map["dev"]
  key_name = data.aws_key_pair.ssh-aws_key.key_name
  user_data = file("${path.module}/user-data.sh")
  subnet_id = var.subnet_value
  associate_public_ip_address = true
  vpc_security_group_ids = [
    data.aws_security_group.linux.id,
    data.aws_security_group.fe.id
  ] 

  count = 2
  availability_zone = var.aws_availability_zones[count.index]
  #for_each = toset(data.aws_availability_zones.az-webapp-dev.names[0])

  tags = {
    "Name" = "web-app10${count.index}"
  }
}