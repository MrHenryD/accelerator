output "cluster_arn" {
  description = "Cluster ARN"
  value       = module.redshift.redshift_cluster_arn
}

output "cluster_host_name" {
  description = "Hostname of Cluster"
  value       = module.redshift.redshift_cluster_hostname
}