resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.frontend.bucket
  key    = "index.html"
  source = "./lab-example/index.html"
  content_type = "text/html"

  etag = filemd5("./lab-example/index.html")
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.frontend.bucket
  key    = "error.html"
  source = "./lab-example/error.html"
  content_type = "text/html"

  etag = filemd5("./lab-example/error.html")
}


resource "aws_s3_object" "image2" {
  bucket = aws_s3_bucket.frontend.bucket
  key    = "content/image2.jpg"
  source = "./lab-example/content/image2.jpg"
  content_type = "image/jpeg"

  etag = filemd5("./lab-example/content/image2.jpg")
}

locals {
  media_assets = merge(
    { for f in fileset(path.module, "**/*.png") : f => "image/png" },
    { for f in fileset(path.module, "**/*.mp4") : f => "video/mp4" }
  )
}

resource "aws_s3_object" "media_assets" {
  for_each = local.media_assets

  bucket       = aws_s3_bucket.frontend.bucket
  key          = "${basename(path.module)}/${each.key}"
  source       = "${path.module}/${each.key}"
  content_type = each.value

  etag = filemd5("${path.module}/${each.key}")
}


resource "aws_s3_object" "Lab-1c-Bonus-G-Bedrock-Report" {
  bucket = aws_s3_bucket.frontend.bucket
  key    = "1c-bonus-G-Cli-Check-Artifacts/Bedrock-Reports/madibamaximus-20260316-162812.md"
  source = "./1c-bonus-G-Cli-Check Artifacts/madibamaximus-20260316-162812.md"
  content_type = "text/markdown"

  etag = filemd5("./1c-bonus-G-Cli-Check Artifacts/madibamaximus-20260316-162812.md")
} 