resource "aws_security_group" "http_server_sg" {
  name = "http_server_sg"
  # Get from AWS Console
  vpc_id = "vpc-01c7a8e4c9741c1f4"

  ingress {
    #from_port   = 80
    from_port = var.server_port
    #to_port     = 80
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # for ssh
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  /* tags = {
    name = "http_server_sg"
  } */
}