resource "aws_s3_bucket" "dicom" {
  bucket = "bucket-dicom"
}

resource "aws_s3_bucket_acl" "dicom" {
  bucket = aws_s3_bucket.dicom.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_dicom" {
  bucket = aws_s3_bucket.dicom.id
  versioning_configuration {
    status = "Enabled"
  }
}