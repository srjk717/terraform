terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }


  backend "s3" {
    bucket   = "rahul-s3-bucket"
    key      = "foreach-demo"
    region   = "us-east-1"
    dynamodb_table = "rahul-s3-lock"
 
 }
 }

provider "aws" {
  # Configuration options
  region = "us-east-1"
}