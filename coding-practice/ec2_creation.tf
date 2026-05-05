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

resource "aws_instance" "myserver" {
  ami = "ami-02eb0c2388ee999f9"
  instance_type = "t3.micro"
  
  tags = {
    Name = "SampleServer"
  }
}
