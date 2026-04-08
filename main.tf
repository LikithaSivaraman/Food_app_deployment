provider "aws" {
    region = "us-east-1"
    }
    resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main-vpc"
  }
}
resource "aws_default_security_group" "SG-01" {
  vpc_id = aws_vpc.main.id

  ingress {
    protocol  = 22
    self      = true
    from_port = 0
    to_port   = 0
  }
  ingress {
    protocol  = 8080
    self      = true
    from_port = 0
    to_port = 0
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "example" {
  ami           = ami-0ec10929233384c7f
  instance_type = "t3.micro"
  key_name   = "Ikey.pem"

  tags = {
    Name = "Instance-demo"
  }
}