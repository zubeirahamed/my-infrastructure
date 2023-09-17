remote_state {
  backend = "s3"
  config = {
    bucket         = "my-terragrunt-bucket2"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-2"  # Your AWS region
    encrypt        = true
  }
}
