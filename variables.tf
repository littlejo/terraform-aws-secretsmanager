variable "name" {
  description = "Name of the secret manager"
  type        = string
}

variable "description" {
  description = "Description of the secret manager"
  type        = string
  default     = ""
}

variable "recovery_window_in_days" {
  description = "Number of days that AWS Secrets Manager waits before it can delete the secret"
  type        = number
  default     = 0
}

variable "secrets" {
  description = "Map of secrets"
  type        = map(string)
  default     = null
}

variable "kms_key_id" {
  description = "KMS key Id"
  type        = string
  default     = null
}

variable "replica_regions" {
  description = "Map of regions to replicate the secret as the key and related kms_key_id as the value"
  type        = map(any)
  default     = {}
}


variable "tags" {
  description = "Map of tags"
  type        = map(string)
  default     = {}
}
