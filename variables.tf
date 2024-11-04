variable "ami_value" {
  description = "The ami of the instance"
  type = string
}

variable "instance_type_value" {
  description = "The type of instance"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "x.large"
  }

}