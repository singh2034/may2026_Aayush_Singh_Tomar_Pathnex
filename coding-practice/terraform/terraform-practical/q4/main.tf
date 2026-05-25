provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
    ami = "ami-0abcd123450abcdxzy3344"
    instance_type = "t2.micro"

    tags = {
        Name = "Terraform-Output-EC2"
    }
}