resource "aws_instance" "instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = var.ec2_public_ip
  vpc_security_group_ids      = [aws_security_group.sg.id]
  key_name                    = var.key_pair
  user_data                   = data.template_file.teleport.rendered
  iam_instance_profile        = aws_iam_instance_profile.test_profile.name
  tags = {
    Name = "teleport-test-instance"
  }
}

data "template_file" "teleport" {
  template = file("${path.module}/teleport.tpl") ######### gets data form your template file and you can put varibales in from code to file 

  vars = {
    domain_name      = "${var.route53_domain}" #######3  Enlist variables you want to call in template file
    cluster_name     = "${var.teleport_cluster_name}"
    email            = "${var.email_for_certbot}"
    teleport_version = "${var.teleport_version}"
  }
}