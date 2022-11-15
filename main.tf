resource "aws_secretsmanager_secret" "this" {
  name                    = var.name
  description             = var.description
  recovery_window_in_days = var.recovery_window_in_days
  kms_key_id              = var.kms_key_id
  tags                    = var.tags
}

resource "aws_secretsmanager_secret_version" "this" {
  count         = var.secrets == null ? 0 : 1
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = jsonencode(var.secrets)
}
