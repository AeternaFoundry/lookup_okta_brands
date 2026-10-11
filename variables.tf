variable "brands_lookup" {
  description = <<EOT
Map of brands_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

