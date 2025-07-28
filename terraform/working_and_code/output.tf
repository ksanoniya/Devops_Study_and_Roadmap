output "ec2_instance_public_ip" {
    value = aws_instance.my_instance.public_ip
}

output "ec2_instance_public_dns" {
    value = aws_instance.my_instance.public_dns
}

output "ec2_instance_private_ip" {
    value = aws_instance.my_instance.private_ip
}