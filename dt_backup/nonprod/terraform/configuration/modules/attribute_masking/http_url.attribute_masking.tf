resource "dynatrace_attribute_masking" "http_url" {
  enabled = true
  key     = "http.url"
  masking = "MASK_ENTIRE_VALUE"
}
