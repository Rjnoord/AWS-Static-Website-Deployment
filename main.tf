resource "aws_s3_bucket" "rjnoord-static-website-2026" {
    bucket = var.aws_s3_bucket
  tags = {
    environment = var.environment
    project = "Gitlab-static-website"
  }
}

resource "aws_s3_bucket_website_configuration" "name" {
  bucket = aws_s3_bucket.rjnoord-static-website-2026.id

  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.rjnoord-static-website-2026.id
  key = "index.html"
  source = "index.html"
  content_type = "text/html"
}

