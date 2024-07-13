output "instance_public_ip" {
  value = aws_instance.webserv.public_ip
  
}

output "instance_private_ip" {
  value = aws_instance.webserv.private_ip
  
}

output "instance_sgs" {
  value = aws_instance.webserv.security_groups
  
}