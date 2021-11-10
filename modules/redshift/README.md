# Redshift
Module for provisioning Redshift.

## Usage

```
module "data_warehouse_logs_sink" {

  source      = "../../../modules/s3"
  environment = var.environment
  bucket_name = "xbnef-jklourp-us-east-2-data-warehouse-logs-sink-dev"
  versioning  = true
  mfa_delete  = true

}

module "data_warehouse" {

  source = "../../../modules/redshift"

  name                   = "xbnef-jklourp-us-east-2-data-warehouse-dev"
  node_type              = "dc2.large"
  number_of_nodes        = 1
  database_name          = "warehouse"
  master_user            = <secrets>
  master_password        = <secrets>
  logging_bucket_name    = module.data_warehouse_logs_sink.bucket_id
  logging_s3_key_prefix  = "xbnef-jklourp-us-east-2-data-warehouse-dev"
  vpc_security_group_ids = []
  enable_logging         = true
  require_ssl            = true

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
| cluster_identifier | Name of cluster | `string` |  | yes |
| cluster_node_type | Type of compute (only dc1.large, dc2.large) | `string` |  | yes |
| cluster_number_of_nodes | Number of nodes in cluster | `number` | `1` | no |
| cluster_database_name | Default database name | `string` |  | yes |
| cluster_master_username | Root user | `string` |  | yes |
| cluster_master_password | Root password | `string` |  | yes |
| logging_bucket_name | Bucket for logging | `string` | | yes |
| logging_s3_key_prefix | Log prefix | `string` | `redshift-cluster-logs` | no |
| vpc_security_group_ids | Security groups associated with cluster | `list(string)` |  | yes |
| enable_logging | Whether to enable logging for cluster | `bool` | `true` | no |
| require_ssl | Whether connection to cluster requires SSL | `bool` | `true` | no |
<br />

## Outputs

| Name | Description |
|------|-------------|
| cluster_arn | Cluster ARN |
| cluster_host_name | Hostname of Cluster |

<br />