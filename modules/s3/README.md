# S3 Bucket
Module for provisioning an S3 bucket.

## Usage

```
module "data_lake" {
  source = "../../modules/s3"

  environment   = "dev"
  bucket_name   = "xbnef-jklourp-data-lake-dev"
  versioning    = true
  
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.2 |
<br />

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.64.2 |
<br />

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment associated with resource | `map(string)` |  | yes |
| bucket_name | Name of bucket | `string` |  | yes |
| versioning | Whether versioning is enabled | `boolean` | `true` | no |
| mfa_delete | Whether deletes require multi-factor authentication | `boolean` | `true` | no |
| acl | The canned ACL to apply | `string` | `private` | no |
<br />

## Outputs

| Name | Description |
|------|-------------|
| bucket_arn | Bucket ARN |
| bucket_id | Name of the Bucket |
<br />