output "bucket_arn" {
  description = "Bucket ARN"
  value       = module.s3.s3_bucket_arn
}

output "bucket_id" {
  description = "Name of bucket"
  value       = module.s3.s3_bucket_id
}