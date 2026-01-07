terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  #terraform tfstate file remote backend section
  backend "s3" {
    bucket = "nathalie-demo-bucket-jan2026"
    key = "dev/nathalie/terraform.tfstate"
    encrypt = true
    region = "us-west-1"
    dynamodb_table = "nathalie-locking-table"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}