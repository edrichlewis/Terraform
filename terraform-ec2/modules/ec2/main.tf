resource "aws_instance" "ec2_instance" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id

    tags = {
        Name = var.name
        Environment = var.environment
    }
  
}

output "instance_id" {
    value = aws_instance.ec2_instance.id
}

output "public_ip" {
    value = aws_instance.ec2_instance.public_ip
}