provider "aws" {
  region = var.aws_region
  profile = var.profile
}

terraform {
  required_version = "1.7.1"
  
  backend "s3" {
    bucket = "ty-terraform-backend"
    key = "terraform-test/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "ty-terraform-statelock"
    workspace_key_prefix = "terraform-state"
  }
}

resource "aws_s3_bucket" "terraform_test" {
  bucket = "${var.bucket_prefix}-bucket"
}
