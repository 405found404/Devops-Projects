      resource "aws_s3_bucket" "webbucket" {
        bucket = var.bucketname
      }

      resource "aws_s3_bucket_ownership_controls" "webbucket" {
        bucket = aws_s3_bucket.webbucket.id

        rule {
          object_ownership = "BucketOwnerPreferred"
        }
      }
      resource "aws_s3_bucket_public_access_block" "webbucket" {
        bucket = aws_s3_bucket.webbucket.id

        block_public_acls       = false
        block_public_policy     = false
        ignore_public_acls      = false
        restrict_public_buckets = false
      }


        resource "aws_s3_bucket_acl" "webbucket" {
        depends_on = [
          aws_s3_bucket_ownership_controls.webbucket,
          aws_s3_bucket_public_access_block.webbucket,
        ]

        bucket = aws_s3_bucket.webbucket.id
        acl    = "public-read"
      }

      resource "aws_s3_object" "index" {
        bucket = aws_s3_bucket.webbucket.id
        key = "index.html"
        source = "index.html"
        acl ="public-read"
        content_type = "text/html"
        
      }

      resource "aws_s3_object" "error" {
        bucket = aws_s3_bucket.webbucket.id
        key = "error.html"
        source = "error.html"
        acl ="public-read"
        content_type = "text/html"
        
      }
    
    

      resource "aws_s3_bucket_website_configuration" "webbucket" {
        bucket = aws_s3_bucket.webbucket.id

        index_document {
          suffix = "index.html"
        }
        
        
        error_document {
          key = "error.html"
        }

        depends_on = [ aws_s3_bucket_acl.webbucket ]
      }