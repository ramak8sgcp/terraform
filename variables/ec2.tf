resource "aws_instance" "terraform" {

  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  tags = var.tags
}

resource "aws_security_group" "allow_ssh_terraform" {
    name        = var.sg_name  #allow_ssh is already ther in my account
    description = var.sg_description

    #usually we allow everything in egress
    #block
    egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]    #allow from everyone
    ipv6_cidr_blocks = ["::/0"]
  }
  
  tags  = var.tags  
}