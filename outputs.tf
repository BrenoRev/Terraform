output "bucket_name" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.bucket_s3.bucket
}

output "bucket_arn" {
  description = "The ARN of the bucket"
  value       = aws_s3_bucket.bucket_s3.arn
}

output "bucket_domain_name" {
  description = "The bucket domain name"
  value       = aws_s3_bucket.bucket_s3.bucket_domain_name
}

output "upload_file_path" {
  description = "The path of the file to upload"
  value       = "${aws_s3_bucket.bucket_s3.bucket}/upload/${local.upload_filename}"
}