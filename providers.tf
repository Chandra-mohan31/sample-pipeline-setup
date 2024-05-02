provider "aws" {
  default_tags {
    tags = {
      env       = "dev"
      createdBy = "chandramohan"
      repo      = "sample-lambda-app-cm"
    }
  }
  region = "us-east-1"
}
