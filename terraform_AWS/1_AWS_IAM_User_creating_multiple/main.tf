# Configure the AWS Provider version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.22"
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
resource "aws_iam_user" "user" {
  count = 2
  name  = "aws_tf_user_${count.index}"
}

/* 
resource "aws_iam_user" "user" {
  count = 3
  name  = "aws_tf_user_${count.index}"
} */