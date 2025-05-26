provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "WebServer"
  }
}

resource "aws_s3_bucket" "name" {
  bucket = var.bucketname
}