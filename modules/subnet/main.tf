resource "aws_subnet" "public" {
    count = 2
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block[count.index]
    map_public_ip_on_launch = true
    availability_zone = var.availability_zones[count.index]

    tags = {
      Name = "${var.name}-subnet-${count.index}"
    }
  
}