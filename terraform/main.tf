terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.74.0"
      }
    }
}

provider "aws" {
    region = "us-east-1"
}
# EC 2 
/*
resource "aws_instance" "this" {
    ami                     = "ami-0ddc798b3f1a5117e"
    instance_type           = "t2.micro"
    count                   = 2

    tags = {
        Name = "EC2 Terraform Instance"
        ProvisionedBy = "Terraform"
        Environment = "Prod"
        Project = "Cloud Resume Challenge"
    }
}
*/

/*
#S3 Bucket
resource "aws_s3_bucket" "test_static_website_bucket" {
  bucket = "test-website-static-bucket-sam-nielsen"

    tags = {
        Name = "Test Static Website Bucket"
        ProvisionedBy = "Terraform"
        Environment = "Prod"
        Project = "Cloud Resume Challenge"
    }
}

resource "aws_s3_bucket_public_access_block" "test_static_website_bucket_public_access_block" {
  bucket = aws_s3_bucket.test_static_website_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Add a bucket policy to allow public access to the objects inside the S3 bucket
resource "aws_s3_bucket_policy" "test_static_website_bucket_policy" {
bucket = aws_s3_bucket.test_static_website_bucket.id  # Attach policy to the previously defined bucket
 
 
policy = jsonencode({  # JSON-encoded policy allowing public read access to the bucket's objects
   Version = "2012-10-17"
   Statement = [
     {
       Effect    = "Allow"              # Allow action
       Principal = "*"                  # Any user (public)
       Action    = "s3:GetObject"       # Permission to get objects from the bucket
       Resource  = "${aws_s3_bucket.test_static_website_bucket.arn}/*"  # Grant access to all objects in the bucket
     }
   ]
})
}


# Configure the bucket to act as a static website
resource "aws_s3_bucket_website_configuration" "test_static_website" {
  bucket = aws_s3_bucket.test_static_website_bucket.id

  index_document {
    suffix = "index.html"
  }

}
*/


#S3 Bucket
resource "aws_s3_bucket" "static_website_bucket" {
  bucket = "samuelnielsen.com"

    tags = {
        Name = "Static Website Bucket"
        ProvisionedBy = "Terraform"
        Environment = "Prod"
        Project = "Cloud Resume Challenge"
    }
}