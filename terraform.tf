terraform {
  required_version = ">= 1.6.0"
  backend "s3" {
    key    = "terraform.tfstate"
    region = "us-east-1"
    bucket = var.terra-test ? "sample-pipeline-terratest-bct-cm" : "sample-pipeline-poc-cm"

    dynamodb_table =  var.terra-test ? "tf-state-lock-terratest-cm" : "tf-state-lock-dynamodb-cm"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.33.0"
    }
  }
}