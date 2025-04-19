output "instance_public_ip" {
  value       = module.ec2_instance.public_ip
  description = "Public IP address of the EC2 instance"
}

output "instance_id" {
  value       = module.ec2_instance.instance_id
  description = "ID of the EC2 instance"
}

output "security_group_id" {
  value       = aws_security_group.ec2-sg.id
  description = "ID of the security group"
}