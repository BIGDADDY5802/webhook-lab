terraform {
  backend "s3" {
    bucket = "11-9-backend"
    key    = "webhook/terraform.tfstate"
    region = "us-east-1"

    provider "aws" {
      region = "us-east-1"
    }
  }
}

resource "aws_s3_bucket" "webhook_test_bucket" {
  bucket = "webhook-test-bucket"
  force_destroy = true

tags = {
    Name        = "webhook-test-bucket"
    Environment = "Dev"
  }

}