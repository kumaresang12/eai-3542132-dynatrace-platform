resource "dynatrace_attribute_masking" "url_full" {
  enabled = true
  key     = "url.full"
  masking = "MASK_ENTIRE_VALUE"
}
