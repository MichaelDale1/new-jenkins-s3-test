locals {
  base_url = "http://${aws_s3_bucket_website_configuration.example.website_endpoint}"
  media_asset_url_paths = {
    for key in keys(local.media_assets) :
    key => replace(replace(urlencode(key), "+", "%20"), "%2F", "/")
  }
}

output "website_url" {
  description = "S3 static website homepage URL"
  value       = local.base_url
}

output "bucket_name" {
  description = "The generated S3 bucket name"
  value       = aws_s3_bucket.frontend.bucket
}

output "index_url" {
  description = "URL for index.html (homepage)"
  value       = "${local.base_url}/index.html"
}

output "error_url" {
  description = "URL for error.html"
  value       = "${local.base_url}/error.html"
}

output "bedrock_report_url" {
  description = "URL for the Bedrock lab report"
  value       = "${local.base_url}/1c-bonus-G-Cli-Check-Artifacts/Bedrock-Reports/madibamaximus-20260316-162812.md"
}

output "media_asset_urls" {
  description = "URLs for all dynamically uploaded media assets (png, mp4, webp, html)"
  value = {
    for key in keys(local.media_assets) :
    key => "${local.base_url}/${local.media_asset_url_paths[key]}"
  }
}

output "mp4_urls" {
  description = "URLs for all mp4 files"
  value = {
    for key in keys(local.media_assets) :
    key => "${local.base_url}/${local.media_asset_url_paths[key]}"
    if endswith(lower(key), ".mp4")
  }
}

output "png_urls" {
  description = "URLs for all png files"
  value = {
    for key in keys(local.media_assets) :
    key => "${local.base_url}/${local.media_asset_url_paths[key]}"
    if endswith(lower(key), ".png")
  }
}

output "webp_urls" {
  description = "URLs for all webp files"
  value = {
    for key in keys(local.media_assets) :
    key => "${local.base_url}/${local.media_asset_url_paths[key]}"
    if endswith(lower(key), ".webp")
  }
}

output "html_urls" {
  description = "URLs for all html files"
  value = {
    for key in keys(local.media_assets) :
    key => "${local.base_url}/${local.media_asset_url_paths[key]}"
    if endswith(lower(key), ".html")
  }
}
