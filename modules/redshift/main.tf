module "redshift" {
  source  = "terraform-aws-modules/redshift/aws"
  version = "3.4.0"

  cluster_identifier      = var.name
  cluster_node_type       = var.node_type
  cluster_number_of_nodes = var.number_of_nodes

  cluster_database_name   = var.database_name
  cluster_master_username = var.master_user
  cluster_master_password = var.master_password

  logging_bucket_name   = var.logging_bucket_name
  logging_s3_key_prefix = var.logging_bucket_name

  vpc_security_group_ids = var.vpc_security_group_ids
  enable_logging         = var.enable_logging
  require_ssl            = var.enable_logging
  
}