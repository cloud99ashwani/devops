#terraform init
#terraform plan
#terraform apply

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
# creating s3 bucket
resource "aws_s3_bucket" "s3" {
  bucket = "aws-s3-bucket991"
}


# enable version
resource "aws_s3_bucket_versioning" "s3_version" {
  bucket = aws_s3_bucket.s3.id
  versioning_configuration {
    status = "Enabled"
  }
}


#check before get output
#terraform output
# > aws_s3_bucket.s3
# > aws_s3_bucket.s3.versioning
/* output "Verify_version" {
    value = aws_s3_bucket.s3.versioning[0].enabled
}

output "Verify_complete" {
    value = aws_s3_bucket.s3
} */