

output "instance_name" {
  description = "instance name"
  value = aws_instance.webapp.tags
  
}

output "public_ip" {
  description = "public ip"
  value = aws_instance.webapp.private_ip
  
}

output "public_dns" {
  description = "public dbs" 
  value = aws_instance.webapp.public_dns
  
}

output "private_ip" {
  description = "private ip"
  value = aws_instance.webapp.private_ip
  
}

output "subnet_id" {
  description = "check subnet id"
  value = aws_instance.webapp.subnet_id
  
}

output "ebs" {
  description = "ebs"
  value = aws_instance.webapp.ebs_optimized
  
}