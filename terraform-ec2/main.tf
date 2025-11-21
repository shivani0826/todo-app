provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


resource "aws_instance" "todoapp" {
  ami = "ami-04b70fa74e45c3917"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  key_name = "dockerkey"

  security_groups = [aws_security_group.todo_sg.name]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    amazon-linux-extras install docker -y
    systemctl start docker
    systemctl enable docker
    docker pull shivani000/todo-app:latest
    docker run -d -p 5000:5000 shivani000/todo-app:latest
  EOF
}

resource "aws_security_group" "todo_sg" {
  name        = "todo-sg"
  description = "Allow 22 and 5000"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
