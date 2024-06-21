resource "aws_s3_bucket" "scbuckettfstatefile"{
  bucket = "s3statebucketsc"
  versioning{
    enabled = true
  }
 }



