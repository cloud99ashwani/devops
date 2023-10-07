#terraform init
#terraform plan
#terraform apply

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.19"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "tf-helloworld-s3-bucket" {
  bucket = "tf-helloworld-s3-bucket"
}

# enable version
resource "aws_s3_bucket_versioning" "tf-helloworld-s3-bucket_version_enable" {
  bucket = aws_s3_bucket.tf-helloworld-s3-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

#check before get output
#terraform output
# > aws_s3_bucket.tf-helloworld-s3-bucket
# > aws_s3_bucket.tf-helloworld-s3-bucket.versioning
output "Verify_version" {
    value = aws_s3_bucket.tf-helloworld-s3-bucket.versioning[0].enabled
}

output "Verify_complete" {
    value = aws_s3_bucket.tf-helloworld-s3-bucket
}