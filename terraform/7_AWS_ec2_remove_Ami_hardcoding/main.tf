# Configure the AWS Provider version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.19"
    }
  }
}

# Configure the AWS s3 bucket
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  #access_key = "my-access-key"
  #secret_key = "my-secret-key"
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [aws_default_vpc.default.id]
  }
}

#terraform apply -target=data.aws_ami.amz_image
# terraform console
# > data.aws_ami.amz_image
# > exit
data "aws_ami" "amz_image"{
  most_recent = true
  owners      = ["amazon"]
  filter {
    name = "name"
    values = ["al2023-ami-2023*"]
  }
  filter {
  name = "architecture"
  values = ["x86_64"]
  }
}


resource "aws_instance" "http_server" {
  #ami                    = "ami-041feb57c611358bd"
  ami                    = data.aws_ami.amz_image.id
  key_name               = "default-ec2"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.http_server_sg.id]
  #subnet_id              = "subnet-0417c5d404bb817ea"
  subnet_id              = data.aws_subnets.default.ids[0]

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file(var.aws_key_pair)

  }

  provisioner "remote-exec" {
    //install httpd server
    // start server
    // create index.html
    inline = [
      "sudo yum install httpd -y",
      "sudo service httpd start",
      "echo Welcome Virtal server - ${self.public_dns} | sudo tee /var/www/html/index.html"
    ]
  }
}