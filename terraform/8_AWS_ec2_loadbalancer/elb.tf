resource "aws_security_group" "elb_sg" {
  name   = "elb_sg"
  vpc_id = aws_default_vpc.default.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

}

#  terraform console
# aws_elb.elb.dns_name
resource "aws_elb" "elb" {
  name            = "elb"
  subnets         = [data.aws_subnets.default.ids[0], data.aws_subnets.default.ids[1]]
  security_groups = [aws_security_group.elb_sg.id]
  instances       = [aws_instance.http_server1.id, aws_instance.http_server2.id]
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}