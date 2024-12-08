resource "aws_instance" "apache" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name

  tags = {
    Name = var.name
  }

  provisioner "remote-exec" {
    inline = [ 
        "sudo apt-get update -y",
        "sudo apt-get install apache2 -y",
        "sudo systemctl start apache2",
     ]

     connection {
       type = "ssh" 
       user = "ubuntu"
       private_key = file(var.private_key_path)
       host = self.public_ip
     }
    
  }
}