###########################
# S3 RESOURCES
###########################

resource "aws_s3_bucket" "cinema_s31_bucket" {
  bucket        = "${local.prefix}-app"
  acl           = "public-read"
  force_destroy = true
  policy        = file("policy.json")

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  versioning {
    enabled = true
  }

  tags = local.common_tags
}
