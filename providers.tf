provider "aws" {
  region = var.aws-region
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route53_zone" "route53" {
  name = var.aws_route53_zone
}



