provider "aws" {
    region = "us-west-2"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-terraform-demo-bucket-12345"
}

tags = {
    Name = "TerraformS3Bucket"
    Environment = "Dev"
}

"""
S3 bucket name always will be unique globally in the aws account.
then the same init and apply commands to create a S3 bucket
"""