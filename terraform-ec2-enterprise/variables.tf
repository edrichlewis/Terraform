variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
}

variable "key_name" {
    description = "Key pair name for SSH access"
    type = string
}

variable "security_group_name" {
    description = "Security group for the EC2 instance"
    type = string
    default = "enterprise-ec2-sg"
}

variable "selected_subnet_id" {
  description = "The selected subnet ID for the EC2 instance"
  type        = string
}
