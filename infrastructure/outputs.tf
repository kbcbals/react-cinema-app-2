output "cinema_app_bucket_name" {
 value = aws_s3_bucket.cinema_s31_bucket.id
}

output "cloud_distribution_id" {
 value = aws_cloudfront_distribution.s3_distribution.id
}

/* variable "cinema_app_bucket_name" {
  value = aws_s3_bucket.cinema_s31_bucket.id
}

variable "cloud_distribution_id" {
  value = aws_cloudfront_distribution.s3_distribution.id
} */