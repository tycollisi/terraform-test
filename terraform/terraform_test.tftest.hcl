variables {
  bucket_prefix = "test"
}

run "name_match_uses_root_level_value" {
  command = plan

  assert {
    condition = aws_s3_bucket.terraform-test.bucket == "test-bucket"
    error_message = "S3 bucket name did not match expected"
  }
}

run "name_match_overrides_root_level_value" {
  command = plan

  variables {
    bucket_prefix = "other"
  }
  
  assert {
    condition = aws_s3_bucket.terraform_test.bucket == "other-bucket"
    error_message = "S3 bucket name did not match expected"
  }
}
