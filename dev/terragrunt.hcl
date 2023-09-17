terraform {
  backend "s3" {
    bucket         = "my-terragrunt-bucket1"
    key            = "path/to/terraform.tfstate"
    region         = "us-east-1"  # Your AWS region
    encrypt        = true
    dynamodb_table = "your-lock-table-name"  # Optional, for state locking
  }
}
