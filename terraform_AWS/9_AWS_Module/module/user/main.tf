variable "env" {
  default = "dev"
}

resource "aws_iam_user" "user"{
  name = "aws_user_${var.env}"
}