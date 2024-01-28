variables {
  bucket_prefix = "test"
}

run "terraform_test" {
  command = plan

  assert {
    condition = aws_s3_bucket.terraform-test.bucket == "test-bucket"
    error_message = "S3 bucket name did not match expected"
  }
}
