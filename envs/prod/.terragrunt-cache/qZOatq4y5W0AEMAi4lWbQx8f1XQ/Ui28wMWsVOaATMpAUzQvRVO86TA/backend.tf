terraform {
  backend "s3" {
    bucket = "inhabit-state-test"
    key = "inhabit/prod.tfstate"
    region = "eu-central-1"
    #dynamodb_table = "terraform-state-lock"
  }
  required_version = "~> 0.13.7"
}