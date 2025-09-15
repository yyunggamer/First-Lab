output "alb_dns_name" {
  value = aws_lb.alb.dns_name
  description = "ALB DNS name (use this to access frontend)"
}
