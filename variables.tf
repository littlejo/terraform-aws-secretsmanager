variable "name" {
  description = "Name of the secret manager"
  type        = string
}

variable "secrets" {
  description = "Map of secrets"
  type        = map(any)
}
