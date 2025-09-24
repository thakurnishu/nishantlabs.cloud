module "s3_with_cloudfront" {
  source = "git::https://github.com/thakurnishu/terraform_modules.git//aws/cloudfront_s3_website?ref=v2.4.1"

  bucket_name  = var.bucket_name
  project_name = var.project_name

  enable_custom_domain  = true
  website_custom_domain = var.website_custom_domain
  acm_region            = var.acm_region

  use_cloudfront_function = true
  function_code           = file("url-rewrite.js")

  tags = var.tags
}
