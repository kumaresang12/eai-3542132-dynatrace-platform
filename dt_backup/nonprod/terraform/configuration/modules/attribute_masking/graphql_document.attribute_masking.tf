resource "dynatrace_attribute_masking" "graphql_document" {
  enabled = true
  key     = "graphql.document"
  masking = "MASK_ENTIRE_VALUE"
}
