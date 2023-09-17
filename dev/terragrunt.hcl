terraform {
  backend = "s3" {
    bucket         = "my-terragrunt-bucket1"
    key            = "dev/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
