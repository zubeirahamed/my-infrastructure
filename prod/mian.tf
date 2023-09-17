provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "prod-inst-grunt" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
}
