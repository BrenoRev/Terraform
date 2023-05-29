resource "aws_s3_bucket" "bucket_s3" {
  bucket = "${var.bucket_s3}-${random_string.string_generator.id}-${var.environment}"

  tags = var.bucket_tags
}

resource "aws_s3_bucket_object" "upload_to_bucket" {
  bucket = aws_s3_bucket.bucket_s3.bucket
  key    = "upload/${local.upload_filename}"
  source = local.upload_filepath
  etag   = filemd5(local.upload_filepath)

}