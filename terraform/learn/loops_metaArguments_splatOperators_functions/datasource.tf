data "aws_key_pair" "ssh-aws_key" {

  key_name = "ssh-virgina-key"
  
}

data "aws_security_group" "linux" {
  name = "Linux-SG"
  
}
data "aws_security_group" "fe" {
  #name = "FE-SG"  
  tags = {
    "Name"= "FE-SG"
  }
  
}


data "aws_ec2_instance_type_offerings" "instance_type" {
  for_each = toset(["us-east-1a","us-east-1b"])
  filter {
    name = "instance-type"
    values = ["t2.micro"]
  }
  filter {
    name = "location"
    values = [each.key]
  }
  location_type = "availability-zone"
}