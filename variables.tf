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
  type        = map(any)
}

variable "tags" {
  description = "Map of tags"
  type        = map(string)
  default     = {}
}
