provider "aws" {
  default_tags {
    tags = {
      env       = var.env
      createdBy = "chandramohan"
      repo      = "sample-lambda-app-cm"
    }
  }
  region = "us-east-1"
}
