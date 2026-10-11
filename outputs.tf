output "brands_lookup_id" {
  description = "Map of id values across all brands_lookup, keyed the same as var.brands_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_brands.brands_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "brands_lookup_brands" {
  description = "Map of brands values across all brands_lookup, keyed the same as var.brands_lookup except keys with no brands are omitted"
  value       = { for k, v in data.okta_brands.brands_lookup : k => v.brands if v.brands != null && length(v.brands) > 0 }
}

