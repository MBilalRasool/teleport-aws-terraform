resource "aws_route53_record" "domain" {
  zone_id = data.aws_route53_zone.route53.id
  type    = var.route53_record_type
  name    = var.route53_domain
  ttl     = var.route53_ttl
  records = [aws_instance.instance.public_ip]
}