key_pair              = ""
aws-region            = "us-east-1"
ami_id                = "ami-04a81a99f5ec58529"
instance_type         = "t3.micro"
route53_domain        = ""
route53_record_type   = "A"
ec2_public_ip         = true
route53_ttl           = 300
machine_ports         = [22, 443]
cidr_blocks           = ["0.0.0.0/0"]
ingress_protocol      = "tcp"
teleport_cluster_name = ""
email_for_certbot     = ""
teleport_version      = "16.0.4"
