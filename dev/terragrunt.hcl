remote_state {
  backend = "s3"
  config = {
    bucket         = "your-s3-bucket-name"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"  # Your AWS region
    encrypt        = true
  }
}
