terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_s3_bucket" "exameqw" {
  bucket = "my-tf-sahil-bucket"

  tags = {
    Name        = "Myitzmesahil"
    Environment = "Dev"
  }
}
