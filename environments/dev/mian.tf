module "vpc" {
  source = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  name = "dev-vpc"
}

module "subnet" {
    source = "Terraform/modules/subnet"
    vpc_id = module.vpc.vpc_id
    cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
    availability_zones = ["us-west-2a", "us-west-2b"]
    name = "dev"
  
}

module "ec2" {
    source = "../../modules/ec2"
    ami = "ami-04505e74c0741db8d"
    instance_type = "t2.micro"
    subnet_id = module.subnet.subnet_ids[0]
    key_name = "my-key-pair"
    name = "dev-ec2"
    private_key_path = "~/.ssh/id_rsa"
  
}