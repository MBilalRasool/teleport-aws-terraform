resource "aws_security_group" "sg" {
  name        = "allow_http_https_ssh"
  description = "Allow inbound traffic on ports 443, 80, and 22"
  vpc_id      = data.aws_vpc.default.id # Replace with your VPC ID

  dynamic "ingress" {
    for_each = var.machine_ports
    iterator = port
    content {
      description = "specific_ports"
      from_port   = port.value
      to_port     = port.value
      cidr_blocks = var.cidr_blocks
      protocol    = var.ingress_protocol
    }
  }
  egress { # egress on kren to command terminal sy bhr api-request snd kry ga tb hi curl get is tra ki commands chlyn gi
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_tls"
  }
}