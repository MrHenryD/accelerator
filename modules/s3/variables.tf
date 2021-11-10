variable "environment" {
    description = "Environment associated with resource"
    type        = string

    validation {
      condition     = contains(["dev", "stage", "prod"], var.environment)
      error_message = "Valid values for var: environment are (dev, stage, prod)."
    }    
}

variable "bucket_name" {
    description = "Name of bucket"
    type        = string
}

variable "versioning" {
  description = "Whether versioning is enabled"
  type        = bool
  default     = true
}

variable "mfa_delete" {
  description = "Whether deletes require multi-factor authentication"
  type        = bool
  default     = true
}

variable "acl" {
  description = "The canned ACL to apply"
  type        = string
  default     = "private"
}