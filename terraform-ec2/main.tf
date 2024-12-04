data "aws_subnet" "default" {
  default_for_az = true
  availability_zone = "us-east-2a"
}

data "aws_vpc" "default" {
  default = true  
}

module "ec2_instance" {
  source = "./modules/ec2"
  ami = "ami-0ea3c35c5c3284d82"
  instance_type = var.instance_type
  subnet_id = data.aws_subnet.default.id
  name = var.instance_name
  environment = var.environment

  
}
