output "dns" {
  value = aws_route53_record.domain.name
}
output "ttl" {
  value = aws_route53_record.domain.ttl
}
output "public_ip" {
  value = aws_instance.instance.public_ip
}