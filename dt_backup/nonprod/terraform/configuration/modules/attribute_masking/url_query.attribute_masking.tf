resource "dynatrace_attribute_masking" "url_query" {
  enabled = true
  key     = "url.query"
  masking = "MASK_ENTIRE_VALUE"
}
