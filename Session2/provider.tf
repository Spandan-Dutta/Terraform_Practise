terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.31.0"
    }
  }
}

provider "aws" {
  # Provisioned by aws cli this time by using the command   # aws configure
  region = "ap-south-1"
}

resource "aws_instance" "OS1" {
  ami = var.ami_name
  instance_type = var.instance_type_name
  tags = {
    Name = var.os_name
  }
}