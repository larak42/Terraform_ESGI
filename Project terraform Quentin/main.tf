

resource "aws_key_pair" "demo_ssh" {

  key_name = var.public_ssh_key_name
  # 1ère possibilitée
  # public_key = "kjjlkjljlkjklljks"

  # 2ème possibilitée
  #  public_key = var.public_ssh_key

  # 3ème possibilitée 
  public_key = file("~/.ssh/id_rsa.pub")

}


resource "aws_security_group" "demo_sg" {

  name        = var.aws_sg_name #"demo_sg"
  description = "Allow SSH to EC2"

  ingress = [{
    description = "allow ssh"
    from_port   = var.aws_port
    to_port     = var.aws_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    security_groups = []
    self = true
  }]

  egress = [{
    description = "allow all "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    self = []
    security_groups = []
    self = true
  }]
}

resource "aws_instance" "my_vm" {

  ami             = var.aws_ec2_ami
  instance_type   = var.aws_instance_type
  key_name        = aws_key_pair.demo_ssh.key_name
  security_groups = [aws_security_group.demo_sg.name]
  tags = {
    Name = var.aws_instance_name
  }

}
resource "aws_instance" "my_vm2" {

  ami             = var.aws_ec2_ami
  instance_type   = var.aws_instance_type
  key_name        = aws_key_pair.demo_ssh.key_name
  security_groups = [aws_security_group.demo_sg.name]
  tags = {
    Name = var.aws_instance_name2
  }

}