variable "region" {
    description = "AWS region"
    default = "us-east-2"
}

variable "instance_type" {
    description = "EC2 instance type"
    defdefault =  "t2.micro"
}

variable "instance_name" {
    description = "Name tag for the EC2 instance"
    default = "EnterpriseEC2"
}

variable "environment" {
  description = "Environment for the instance (e.g., dev, prod)"
  default = "dev"
}
