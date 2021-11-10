variable "name" {
    description = "Name of cluster"
    type        = string
}

variable "node_type" {
    description = "Type of compute"
    type        = string

    validation {
      condition     = contains(["dc1.large", "dc2.large"], var.node_type)
      error_message = "Valid values for var: environment are (dc1.large, dc2.large)."
    }
}

variable "number_of_nodes" {
    description = "Number of nodes in cluster"
    type        = number
    default     = 1
}

variable "database_name" {
    description = "Default database name"
    type        = string
}

variable "master_user" {
    description = "Root user"
    type        = string
}

variable "master_password" {
    description = "Root password"
    type        = string
}

variable "logging_bucket_name" {
    description = "Bucket for logging"
    type        = string
}

variable "logging_s3_key_prefix" {
    description = "Log prefix"
    type        = string
    default     = "redshift-cluster-logs"
}

variable "vpc_security_group_ids" {
    description = "Security groups associated with cluster"
    type        = list(string)
}

variable "enable_logging" {
    description = "Whether to enable logging for cluster"
    type        = bool
    default     = true
}

variable "require_ssl" {
    description = "Whether connection to cluster requires SSL"
    type        = bool
    default     = true
}
