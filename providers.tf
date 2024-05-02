provider "aws" {
  default_tags {
    tags = {
      env       = "dev"
      createdBy = "chandramohan"
    }
  }
  region = "us-east-1"
}
