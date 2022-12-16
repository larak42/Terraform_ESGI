variable "aws_region" {
  description = "Default region of aws instance"
  type        = string
  default     = "us-east-1"

}

variable "aws_secret_key" {
  description = "Account secret Key"
  type        = string
}


variable "aws_access_key" {

  description = "Account access Key"
  type        = string
}

variable "aws_token" {

  description = "Account token session"
  type        = string
}

variable "public_ssh_key_name" {
  description = "Name of SSH Key"
  type        = string
}
variable "aws_sg_name" {

  description = "Name of security group"
  type        = string
}

variable "aws_ec2_ami" {

  description = "ami of ec2 instance"
  type        = string
}

variable "aws_instance_type" {

  description = "Type of EC2 instance "
  type        = string
  default     = "t2.micro"
}

variable "aws_instance_name" {

  description = "AWS instance Name"
  type        = string

}
variable "aws_instance_name2" {

  description = "AWS instance Name"
  type        = string

}
variable "aws_port" {

  description = "port ingress"
  type        = string 

}