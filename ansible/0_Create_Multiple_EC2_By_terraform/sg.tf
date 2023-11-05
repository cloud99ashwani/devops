resource "aws_security_group" "http_server_sg" {
  name = "http_server_sg"
  # Get from AWS Console
  vpc_id = "vpc-03b4d02322aa071c5"

  ingress {
    from_port   = 80
    to_port     = 80
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