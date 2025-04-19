resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = var.instance_name
  }

  user_data = <<-EOF
#!/bin/bash
  sudo apt update -y
  # Install Docker
  curl -fsSL https://get.docker.com -o install-docker.sh
  sudo sh install-docker.sh
  sudo usermod -aG docker $USER
  newgrp docker

  # Install Nginx
  sudo apt install -y nginx
  sudo systemctl start nginx
  EOF

  vpc_security_group_ids = var.security_group_ids
}