variable "ami" {
    description = "AMI Id for the EC2 instance"
  
}

variable "instance_type" {
    description = "Type of the EC2 instance"
    default = "t2.micro"
}

variable "subnet_id" {
    description = "Subnet ID where the EC2 instance will be launched"  
}

variable "name" {
    description = "Name tag for the EC2 instance"
    default = "MyEC2Instance"
  
}

variable "environment" {
    description = "Environment tag (e.g., dev, prod)"
    default = "dev"
  
}