data "aws_subnet" "default" {
  default_for_az = true
}

module "ec2_instance" {
  source = "./modules/ec2"
  ami = "ami-0453ec754f44f9a4a"
  instance_type = var.instance_type
  subnet_id = data.aws_subnet.default.id
  name = var.instance_name
  environment = var.environment

  
}