terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
  profile = "setra-sso-profile"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-paset-313131" # Replace with your desired bucket name
  acl    = "private" # Sets the ACL to private (default is private if not specified)
  
  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}
