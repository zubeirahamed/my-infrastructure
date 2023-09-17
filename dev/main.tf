provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev-inst-grunt" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
          Name = "dev-inst-grunt"
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
