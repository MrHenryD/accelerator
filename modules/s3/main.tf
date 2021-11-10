module "s3" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.bucket_name
  acl    = var.acl

  versioning = {
    enabled = var.versioning
    mfa_delete = var.mfa_delete
  }
  
}