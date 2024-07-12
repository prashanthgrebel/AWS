variable "ami_id" {
  description = "Image-os"
}

variable "instance_type_value" {
  type = string
  description = "intance type"
    
}
variable "subnet_value" {
  description = "assigning subnet"
  
}

variable "vpc_id" {
  description = "my_vpc"
  
}
variable "aws_key" {
  description = "aws key"
}
variable "aws_Linux_SG" {
  description = "Security goups"
}
