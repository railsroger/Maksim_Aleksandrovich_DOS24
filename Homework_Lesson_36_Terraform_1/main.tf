terraform {
  required_providers {
    aws = {
      source  = "local/hashicorp/aws"
      version = "5.95.0"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "us-west-2"
}

variable "vm_name" {
  description = "FirstTerraformTask"
  type        = string
  default     = "MyFirstTerraformVM"
}

resource "aws_instance" "MyVm1" {
  ami           = "ami-05572e392e80aee89"
  instance_type = "t2.micro"
  tags = {
    Name = var.vm_name
  }
}
