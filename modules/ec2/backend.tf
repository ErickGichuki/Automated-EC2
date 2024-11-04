terraform {
  backend "s3" {
    bucket = "ericks-gichuki-devops"
    region = "us-east-1"
    key = "devops/terraform.tfstate"
  }
}