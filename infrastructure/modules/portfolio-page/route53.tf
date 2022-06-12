data "aws_route53_zone" "public" {
  name         = var.domain_name
  private_zone = false
}
resource "aws_route53_record" "web" {
  zone_id = data.aws_route53_zone.public.id
  name    = var.domain_name

  type = "A"

  alias {
    name                   = aws_cloudfront_distribution.this.domain_name
    zone_id                = aws_cloudfront_distribution.this.hosted_zone_id
    evaluate_target_health = false
  }
}
