variable "ec2_instance_type" {
    default = "t2.micro"
    type = string
}

variable "ec2_root_block_device" {
    default = 8
    type = number
}

variable "ami_id" {
    default = "ami-01f23391a59163da9"
    type = string
}