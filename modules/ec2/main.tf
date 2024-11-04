provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "erics" {
  ami = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    Name = "Ericks"
  }
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket = "ericks-gichuki-devops"
}