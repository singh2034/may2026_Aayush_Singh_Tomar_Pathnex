provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "my_ec2" {
    ami = "ami-0abcd1234abcd1234"
    instance_type = var.instance_type

    tags = {
        Name = "Terraform-variable-ec2"
    }
}

'''
Commands to run
1. terraform validate - for checking the code
2. terraform plan - for planning the actual infra code
3. terraform apply & yes - for actually applying the code and use it as a real infra in the aws.    
'''