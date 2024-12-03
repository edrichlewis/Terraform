output "instance_id" {
    description = "ID of the created EC2 instance"
    value = module.ec2_instance.instance_id
}

output "public_ip" {
    description = "Public IP of the created EC2 instance"
    value = module.ec2_instance
}

output "ec2_private_ip" {
    value = aws_instance.enterprise_ec2.private_ip
}

