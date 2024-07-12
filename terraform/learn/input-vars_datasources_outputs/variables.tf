variable "instance_type" {
  type = string
  default = "t2.micro"
  
}

variable "aws_key" {
  type = string
  default = "ssh-virgina-key"
  
}

variable "subnet_id" {
  type = string
  default = "subnet-00fd30c94d5aabe0b"
  
}
