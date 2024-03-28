output "ec2_sg_id" {
  description = "The ID of the EC2 Security Group."
  value       = aws_security_group.sg.id
}

output "instance_ip" {
  value = aws_instance.inst.public_ip
}
