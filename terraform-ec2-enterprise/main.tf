data "aws_ami" "amazon_linux" {
    most_recent = true
    owners      = ["amazon"]

    filter {
        name    = "name"
        values  = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
    vpc_id  = data.aws_vpc.default.id
}

resource "aws_instance" "enterprise_ec2" {
    ami     = data.aws_ami.amazon_linux.id
    instance_type = var.instance_type
    subnet_id     = data.aws_subnet.default.id
    key_name      = var.key_name
    security_groups = [aws_security_group.ec2_security_group.name]

    tags = {
        Name = "Enterprise-EC2-Instance"
        Environment = "Production"
    }
}
