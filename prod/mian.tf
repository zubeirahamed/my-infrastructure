provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "prod-inst-grunt" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"
  tags = {
          Name = "prod-inst-grunt"
}
}

terraform {
  backend "s3" {
    bucket         = "my-terragrunt-bucket4"
    key            = "terraform-states/dev/terraform.tfstate"
    region         = "us-west-2"  # Your AWS region
    encrypt        = true
  }
}
