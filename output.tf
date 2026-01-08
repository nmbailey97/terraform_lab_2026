
output "nathalie-vm-id" {
  value = [for i in aws_instance.ec2: i.id ]
}