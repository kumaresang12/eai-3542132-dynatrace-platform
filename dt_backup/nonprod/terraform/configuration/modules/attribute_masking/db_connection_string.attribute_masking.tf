resource "dynatrace_attribute_masking" "db_connection_string" {
  enabled = true
  key     = "db.connection_string"
  masking = "MASK_ENTIRE_VALUE"
}
