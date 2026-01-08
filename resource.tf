resource "aws_instance" "ec2" {
  ami = var.nathalie-ami
  instance_type = var.vm-size
  count = var.novm
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  tags = { 
    Name = "${var.vm-name}-${count.index}"
  }
}
