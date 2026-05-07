terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "pathnex" {
  ami = "ami-02eb0c2388ee999f9"
  instance_type = "t3.micro"
  count = 1
  key_name = "ec2-aayush-pathnex"
  subnet_id = "subnet-09800c6ca756ca941"
  vpc_security_group_ids = ["sg-0475b55ddc724a6c8"]
  tags = {
    Name = "pathnex-ec2-1"
  }
}