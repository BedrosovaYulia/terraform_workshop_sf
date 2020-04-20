# main.tf

# Declare the provider being used, in this case it's AWS.
# This provider supports setting the provider version, AWS credentials as well as the region.
# It can also pull credentials and the region to use from environment variables, which we have set, so we'll use those
provider "aws" {
  version = "~> 2.0"
  region="us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket        = "jk-di-${var.student_alias}"
  acl           = "public-read-write"
  force_destroy = true
}
