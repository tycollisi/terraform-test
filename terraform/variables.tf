variable "aws_region" {
  description = "AWS Region Target"
  default     = "us-east-1"
}

variable "profile" {
  description = "Deployment Credentials"
  default = "tcollisi"
}

variable "bucket_prefix" {
  type = string
}
