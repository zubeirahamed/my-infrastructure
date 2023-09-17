provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "prod-inst-grunt" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  tags = {
          Name = "prod-inst-grunt"
}
}

terraform {
  backend "s3" {
    bucket         = "my-terragrunt-bucket1"
    key            = "terraform-states/dev/terraform.tfstate"
    region         = "us-east-1"  # Your AWS region
    encrypt        = true
  }
}
