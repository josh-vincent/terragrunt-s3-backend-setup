# ------------------------------------------------------------------------------
# This is where you will include your modules to run with terraform
# Included the basics of creating a s3 bucket for example
# ------------------------------------------------------------------------------
#resource "aws_s3_bucket" "bucket" {
#  bucket = "my-tf-test-bucket-unique-uuid-000"
#
#  tags = {
#    Name        = "Terragrunt Setup S3"
#    Environment = "TEST"
#  }
#}
#
#resource "aws_s3_bucket_acl" "example" {
#  bucket = aws_s3_bucket.bucket.id
#  acl    = "private"
#}