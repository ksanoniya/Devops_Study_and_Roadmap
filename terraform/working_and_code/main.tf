# public key genrate to using command are 
# ssh-keygen
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("terrakey.pub")
}

# create vpc
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

# create inbound and outbound security group
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_default_vpc.default.id

  tags = {
    Name = "allow_tls"
  }
    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    ingress{
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
  # outbound
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   }
    
}
# create ec2 instance

resource "aws_instance" "my_instance" {
  key_name = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.allow_tls.name]
  instance_type = var.ec2_instance_type
  ami = var.ami_id
  user_data = file("install_nginx.sh")
  root_block_device {
    volume_size = 8
    volume_type = "gp3"

  }

  tags = {
    Name = "terra_instance"
  }
} 
