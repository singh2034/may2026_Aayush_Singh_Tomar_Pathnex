resource "aws_instance" "my_ec2_for_each" {
    for_each = toset(["dev", "test"])

    ami = "0abcd1234abcd0"
    instance_type = "cx7.flex.large"

    tags = {
        Name = each.key
    }
}

/*
1. For each is for uniqueness creation of each instances
2. creates different names
other things remain same
 */