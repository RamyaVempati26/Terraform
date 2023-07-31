provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-02a89066c48741345"
  instance_type = "t2.micro"
  key_name      = "ohiokey"
  tags = {
    "Name" = "MyEC2_Instance"
  }
}