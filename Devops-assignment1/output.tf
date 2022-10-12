output "public-dns" {
  value = aws_lb.external-alb.dns_name
}