variable "aws_s3_bucket" { 
    description = "static_website"
    type = string
    default = "Rjnoord-static-website-bucket"

  
}

variable "aws_region" {
    type = string
    description = "us-east-1"
    
  
}

variable "environment" {
    type = string
    description = "Deployment Environment"
    default = "Dev_environment"   
}

