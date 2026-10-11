data "okta_brands" "brands_lookup" {
  for_each = var.brands_lookup

}

