variable "region" {
  description = "Region associated with AWS provider"
  type        = string
  default     = "us-west-2"
}

variable "environment" {
  description = "Environment associated with deployment"
  type        = string
  default     = "prod"
}

variable "team" {
  description = "Team associated with resources"
  type        = string
  default     = "Data Analytics"
}

variable "maintainer" {
  description = "Maintaniner of deployment"
  type        = string
  default     = "MrHenryD"
}