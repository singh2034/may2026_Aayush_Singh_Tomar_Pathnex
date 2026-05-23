provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "terraform_ec2" {
    ami = "ami-0abcd1234abcd"
    instance_type = "t3.medium"

    tags = {
    Name = "Terraform-EC2"
}
}

"""
CLI commands to run

1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply then yes
"""
