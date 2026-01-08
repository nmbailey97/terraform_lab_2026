resource "aws_instance" "ec2" {
  for_each = var.ec2_instances
  ami = var.nathalie-ami
  instance_type = each.value
  #count = var.novm

  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  tags = { 
    #Name = "${var.vm-name}-${count.index}"
    Name = "nathalie-vm-${each.key}"
  }
}
