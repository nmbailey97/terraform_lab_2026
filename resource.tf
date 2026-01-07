resource "aws_instance" "ec2" {
  ami = var.nathalie-ami
  instance_type = var.vm-size
  
  tags = { 
    Name = var.vm-name
  }
}

