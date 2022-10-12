resource "aws_route53_zone" "myZone" {
  name = "ajay.ta"
}

resource "aws_route53_record" "myRecord" {
  zone_id = aws_route53_zone.myZone.zone_id
  name    = "www.ajay.ta"
  type    = "CNAME"
  ttl     = 60
  records = [aws_lb.external-alb.dns_name]
}