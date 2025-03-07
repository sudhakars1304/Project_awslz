terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

resource "aws_vpc" "Main" {
  cidr_block = var.cidr_block
  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_subnet" "dev-subnet" {
  vpc_id = aws_vpc.Main.id
  cidr_block = var.aws_subnet
  tags = {
    Name = "dev-subnet"
  }
}
