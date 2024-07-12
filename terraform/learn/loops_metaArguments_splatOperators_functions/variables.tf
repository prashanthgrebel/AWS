variable "ami_id" {
  description = "Image-os"
}
/*
variable "instance_type_value" {
  type = string
  description = "intance type"
    
}
*/
variable "subnet_value" {
  description = "assigning subnet"
  
}

variable "vpc_id" {
  description = "my_vpc"
  
}
variable "aws_key" {
  description = "ssh key"

  
}

variable "instance_type_list" {
  description = "instance types"
  type = list(string)
  default = [ "t2.micro","t3.micro" ]
  
}

variable "instance_type_map" {
  description = "mapping"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa" = "t3.micro"
    "prod" = "t3.medium"
  }
  
}

variable "aws_availability_zones" {
  type = list(string)
  default = ["us-east-1a","us-east-1b"]
  
}


