output "brands_lookup_id" {
  description = "Map of id values across all brands_lookup, keyed the same as var.brands_lookup"
  value       = { for k, v in data.okta_brands.brands_lookup : k => v.id }
}
output "brands_lookup_brands" {
  description = "Map of brands values across all brands_lookup, keyed the same as var.brands_lookup"
  value       = { for k, v in data.okta_brands.brands_lookup : k => v.brands }
}

