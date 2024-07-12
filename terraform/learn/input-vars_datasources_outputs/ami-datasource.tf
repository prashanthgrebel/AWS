data "aws_ami" "redhat" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    #values = ["ami-0583d8c7a9c35822c"]

  }
  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}
data "aws_security_group" "linux" {
  name = "Linux-SG"
  
}
data "aws_security_group" "fe" {
  name = "FE-SG"
  
}

data "aws_key_pair" "ssh-key" {
  key_name = "ssh-virgina-key"
  
}


  
