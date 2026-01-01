output "website_url" {
  description = "The CloudFront URL to access your website"
  value       = "https://${aws_cloudfront_distribution.cdn.domain_name}"
}