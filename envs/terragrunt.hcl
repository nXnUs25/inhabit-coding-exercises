generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region = "eu-central-1"
}
EOF
}

remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket         = "acoustic-prod-ccloud-terraform"
    key            = "ccloud/${path_relative_to_include()}.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}
