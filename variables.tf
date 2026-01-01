variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}
variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name (must be unique)"
  default     = "parikshit-secure-static-site"
}