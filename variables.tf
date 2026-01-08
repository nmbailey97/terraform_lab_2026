variable "nathalie-ami" {
  type = string
  description = "whatever ashu wrote"
  default = "ami-068c0051b15cdb816"
}

variable "vm-size" {
    type = string
    default = "t3.micro"
}

variable "vm-name" {
    type = string
    default = "nathalie :)"
}


variable "novm" {
  type = number
  description = "this is for number of vms being created"
}


variable "ec2_instances" {
  type = map(string)
  default = {
    "web" = "t3.micro"
    "db" = "t2.small"
  }
}