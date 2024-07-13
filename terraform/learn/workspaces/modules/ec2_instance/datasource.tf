data "aws_security_group" "linux" {
  name = "Linux-SG"
  
}
data "aws_security_group" "fe" {
  name = "FE-SG"
  
}

