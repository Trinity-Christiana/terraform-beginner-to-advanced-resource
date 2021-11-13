variable "ACCESS_KEY" {
  description = "Access key for AWS IAM"
}

variable "SECRET_KEY" {
  description = "Secret key for AWS IAM"
}

provider "aws" {
  region = "us-west-2" 
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
}

resource "aws_instance" "myec2" {
  ami = "ami-00be885d550dcee43"
  instance_type = "t2.micro"
}