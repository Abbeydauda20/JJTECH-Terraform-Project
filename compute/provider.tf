terraform {
  required_version = ">=1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}


# resource "aws_instance" "web-server2" {
#   ami                         = var.ami
#   instance_type               = var.instance_type[2]
#   availability_zone           = var.availability_zone[2]
#   tags                        = var.instance_tags
#   associate_public_ip_address = var.associate_public_ip_address
# }

resource "aws_vpc" "projectA-vpc" {
  cidr_block = "10.0.0.0/16"

   tags = {
    Name = "main"
  }
}




