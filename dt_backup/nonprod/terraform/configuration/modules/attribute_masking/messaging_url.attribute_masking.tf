resource "dynatrace_attribute_masking" "messaging_url" {
  enabled = true
  key     = "messaging.url"
  masking = "MASK_ENTIRE_VALUE"
}
