####################################################################
#         Variable for AMI

variable "ami" {
    type = string
    description = "This is the AMI ID"
    default = "ami-05fa00d4c63e32376"
}
###################################################################

###################################################################
#        Variable for Instance Type

variable "instance_family" {
    type = string
    description = "This is the instance type"
    default = "t2.micro"
}
###################################################################

###################################################################
#          Use of Locals 

locals {
    Launched_On = "20Sept"
}
###################################################################



resource "aws_instance" "test_os" {
  ami = var.ami
  instance_type = var.instance_family
  availability_zone = "us-east-1c"
  # key_name = "spandankeypair"
  tags = {
    "Name" = "OS-launched-on-${local.Launched_On}"
  }
}