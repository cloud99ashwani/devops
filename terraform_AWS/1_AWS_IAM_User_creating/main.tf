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
  name = "aws_tf_user"
}

resource "aws_iam_access_key" "AccK" {
  user = aws_iam_user.user.name
}
# terraform console not showing the aws_iam_access_key, that reason we are display in output
output "secret_key" {
  value     = aws_iam_access_key.AccK.secret
  sensitive = true
}

output "access_key" {
  value = aws_iam_access_key.AccK.id
} 