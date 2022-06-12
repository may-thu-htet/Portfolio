provider "aws" {
  profile = "mth"
  region  = "ap-northeast-1"
}
module "portfolio_page" {
  source = "./modules/portfolio-page/"

  site_tags           = "mth-portfolio"
  domain_name         = var.domain_name
  program_bucket      = "mth-portfolio"
  acm_certificate_arn = var.acm_certificate_arn
}
