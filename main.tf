module "ec2_instance" {
  source            = "./modules/ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  instance_name     = var.instance_name
  vpc_id            = var.vpc_id
  ssh_cidr_blocks   = var.ssh_cidr_blocks
  security_group_ids = [aws_security_group.ec2-sg.id]
}

resource "aws_security_group" "ec2-sg" {
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_cidr_blocks
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.ssh_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.instance_name
  }
}
