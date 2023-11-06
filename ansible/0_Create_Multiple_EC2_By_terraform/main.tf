# Configure the AWS Provider version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.19"
    }
  }
}
variable "tagname" {
  default = ["dev", "dev", "qa"]
  type    = list(string)
}

# Configure the AWS s3 bucket
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  #access_key = "my-access-key"
  #secret_key = "my-secret-key"
}

resource "aws_instance" "http_server" {
  ami                    = "ami-041feb57c611358bd"
  key_name               = "default-ec2"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.http_server_sg.id]
  subnet_id              = "subnet-07b07e2737a71d19e"
  count                  = 3

  tags = {
    key_name = var.tagname[count.index]
  }
}