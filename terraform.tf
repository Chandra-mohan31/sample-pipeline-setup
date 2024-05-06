terraform {
  required_version = ">= 1.6.0"
  backend "s3" {
    key            = "terraform.tfstate"
    region         = "us-east-1"
    bucket         = "sample-poc-pipeline-dev"
    dynamodb_table = "sample-pipeline-poc-lock-table-dev"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.33.0"
    }
  }
}