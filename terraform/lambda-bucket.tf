resource "aws_s3_bucket" "lambda" {
  bucket = "lambda-dicom"
}

//resource "aws_s3_bucket_acl" "lambda" {
//  bucket = aws_s3_bucket.lambda.id
//  acl    = "private"
//}

resource "aws_s3_bucket_versioning" "versioning_lambda" {
  bucket = aws_s3_bucket.lambda.id
  versioning_configuration {
    status = "Enabled"
  }
}