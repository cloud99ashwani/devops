variable "aws_key_pair" {
  default = "~/aws/aws_keys/default-ec2.pem"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}
