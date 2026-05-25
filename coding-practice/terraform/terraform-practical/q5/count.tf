provider "aws" {
    region = "us-east-3"
}

resource "aws_instance" "my_ec2" {
    count = 2
    ami = "0abcd12340abc"
    instance_type = "t3.medium"

    tags = {
        Name = "Terraform-Ec2-${count.index}"
    }
}