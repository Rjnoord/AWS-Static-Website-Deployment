resource "aws_s3_bucket" "static_website" {
    bucket = var.aws_s3_bucket
  tags = {
    environment = var.environment
    project = "Gitlab-static-website"
  }
}

