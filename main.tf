terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-04f7efe62f419d9f5"
  instance_type = "t2.micro"

  tags = {
    Name = "anirban.deb"
  }
}
