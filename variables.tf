variable "name" {
  description = "Name of the secret manager"
  type        = string
}

variable "description" {
  description = "Description of the secret manager"
  type        = string
  default     = ""
}

variable "secrets" {
  description = "Map of secrets"
  type        = map(any)
}

variable "tags" {
  description = "List of tags"
  type        = list(any)
  default     = []
}
