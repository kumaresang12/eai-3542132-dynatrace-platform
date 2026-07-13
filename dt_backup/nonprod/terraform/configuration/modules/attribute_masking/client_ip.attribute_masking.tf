resource "dynatrace_attribute_masking" "client_ip" {
  enabled = true
  key     = "client.ip"
  masking = "MASK_ENTIRE_VALUE"
}
