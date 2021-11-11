module "s3" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.11.1"
  
  bucket  = var.bucket_name
  acl     = var.acl

  versioning = {
    enabled = var.versioning
    mfa_delete = var.mfa_delete
  }
  
}