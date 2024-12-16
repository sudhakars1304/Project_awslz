variable "region" {
  description = "the region where we are going to deploy."
  default = "us-east-1"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  default = "10.0.0.0/16"
}

variable "aws_subnet" {
  description = "Subnet slice for the dev-vpc"
  default = "10.0.1.0/24"
}