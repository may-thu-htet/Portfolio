provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"
}
# resource "aws_acm_certificate" "mysite" {
#   # provider          = aws.us-east-1
#   domain_name       = var.domain_name
#   validation_method = "DNS"
#   lifecycle {
#     create_before_destroy = true
#   }
#   tags = {
#     Name = var.site_tags
#   }
# }
# data "aws_acm_certificate" "mysite" {
#   # provider    = aws.us-east-1
#   domain      = var.domain_name
#   types       = ["AMAZON_ISSUED"]
#   most_recent = true
# }


# resource "aws_route53_record" "cert_validation" {
#   allow_overwrite = true
#   name            = tolist(aws_acm_certificate.mysite.domain_validation_options)[0].resource_record_name
#   records         = [tolist(aws_acm_certificate.mysite.domain_validation_options)[0].resource_record_value]
#   type            = tolist(aws_acm_certificate.mysite.domain_validation_options)[0].resource_record_type
#   zone_id         = data.aws_route53_zone.public.id
#   ttl             = 60
# }


# resource "aws_acm_certificate_validation" "cert" {
#   provider                = aws.us-east-1
#   certificate_arn         = aws_acm_certificate.mysite.arn
# validation_record_fqdns = [aws_route53_record.cert_validation.fqdn]
# }
