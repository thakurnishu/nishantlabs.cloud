variable "region" {
  type = string
}
variable "bucket_name" {
  type = string
}
variable "project_name" {
  type = string
}

variable "acm_region" {
  type = string
}
variable "website_custom_domain" {
  type = string
}
variable "tags" {
  type = map(string)
}
