remote_state {
  backend = "s3"
  config = {
    bucket         = "my-terragrunt-bucket1"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"  # Your AWS region
    encrypt        = true
  }
}
