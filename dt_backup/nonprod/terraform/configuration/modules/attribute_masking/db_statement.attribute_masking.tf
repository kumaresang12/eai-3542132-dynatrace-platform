resource "dynatrace_attribute_masking" "db_statement" {
  enabled = true
  key     = "db.statement"
  masking = "MASK_ENTIRE_VALUE"
}
