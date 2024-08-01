provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "us-east-1"
}

resource "aws_instance" "Udacity_T2" {
  ami = "ami-0323c3dd2da7fb37d"
  count = 4
  subnet_id = var.public_subnet_id
  instance_type = "t2.micro"
}

# resource "aws_instance" "Udacity_M4" {
#   ami = "ami-0323c3dd2da7fb37d"
#   count = 2
#   subnet_id = var.public_subnet_id
#   instance_type = "m4.large"
# }