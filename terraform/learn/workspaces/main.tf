provider "aws" {
  region = "us-east-1"  
}


module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0583d8c7a9c35822c"
  instance_type_value = "t2.micro"
  ssh_key_value = "ssh-virgina-key"
  subnet_id_value = "subnet-00fd30c94d5aabe0b"
  security_group_name_value = var.security_group_name
  
  
}