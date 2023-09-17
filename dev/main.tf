provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "dev-inst-grunt" {
  ami           = "ami-0f8e81a3da6e2510a"
  instance_type = "t2.micro"
  tags = {
          Name = "dev-inst-grunt"
}
}

terraform {
  backend "s3" {
    bucket         = "my-terragrunt-bucket1"
    key            = "terraform-states/dev/terraform.tfstate"
    region         = "us-west-1"  # Your AWS region
    encrypt        = true
  }
}
