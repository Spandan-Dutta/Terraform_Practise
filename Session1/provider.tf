terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}


########################################################
#        First Create a IAM User to provide credentials
########################################################

# Variable for access key
variable "access_key" {
    type = string
    description = "This is the access key"
    default = ""
    sensitive = true
}

# Variable for secret key
variable "secret_key" {
    type = string
    description = "This is the secret key"
    default = ""
    sensitive = true
}

# Variable for region
variable "region" {
    type = string
    description = "This is the region"
    default = "us-east-1"
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}
