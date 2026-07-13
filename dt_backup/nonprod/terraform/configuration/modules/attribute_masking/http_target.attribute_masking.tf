resource "dynatrace_attribute_masking" "http_target" {
  enabled = true
  key     = "http.target"
  masking = "MASK_ENTIRE_VALUE"
}
