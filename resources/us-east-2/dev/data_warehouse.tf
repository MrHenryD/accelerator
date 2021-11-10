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
  master_user            = "Fr8wjAADoPrV2Dct"
  master_password        = "Fr8wjAADoPrV2Dct"
  logging_bucket_name    = module.data_warehouse_logs_sink.bucket_id
  logging_s3_key_prefix  = "xbnef-jklourp-us-east-2-data-warehouse-dev"
  vpc_security_group_ids = []
  enable_logging         = true
  require_ssl            = true

}