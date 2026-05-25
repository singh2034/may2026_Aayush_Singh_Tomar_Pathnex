output "instance_public_ip" {
    value = aws_instance.my_ec2.public_ip
}

/*
Code to run in the terminal
1. Terrform Validate - configuration must be Validate
2. terraform apply or plan - to see the changes.
3. Make sure aws configuration is correctly configured in the system you are using.
*/