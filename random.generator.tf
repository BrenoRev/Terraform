resource "random_string" "string_generator" {
  length  = 8
  special = false
  upper   = false
  number  = true
} 