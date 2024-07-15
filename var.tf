variable "key_pair" {
  type    = string
  default = "your-key-pair-name"
}

variable "aws-region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = "ami-04a81a99f5ec58529"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "aws_route53_zone" {
  type    = string
  default = ""
}

variable "route53_domain" {
  type    = string
  default = ""
}

variable "route53_record_type" {
  type    = string
  default = "A"
}

variable "ec2_public_ip" {
  type    = bool
  default = true
}

variable "route53_ttl" {
  type    = number
  default = 300
}

variable "sg_name" {
  type    = string
  default = ""
}

variable "machine_ports" {
  type    = list(number)
  default = [22, 443]
}


variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "ingress_protocol" {
  type    = string
  default = "tcp"
}

variable "teleport_cluster_name" {
  type    = string
  default = "test-cluster"
}

variable "email_for_certbot" {
  type    = string
  default = ""
}

variable "teleport_version" {
  type    = string
  default = "16.0.1"
}
