terraform {
  required_version = ">=1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}



resource "aws_vpc" "projectA-vpc" {
  cidr_block = "10.0.0.0/16"
   tags = {
    Name = "main"
  }
}