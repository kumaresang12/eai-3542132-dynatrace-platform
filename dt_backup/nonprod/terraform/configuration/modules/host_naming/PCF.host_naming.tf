resource "dynatrace_host_naming" "PCF" {
  name    = "PCF"
  enabled = true
  format  = "{Host:BoshName}:{Host:Environment:PcfFoundation}"
  conditions {
    condition {
      custom_host_metadata {
        attribute = "HOST_CUSTOM_METADATA"
        dynamic_key {
          key    = "PcfFoundation"
          source = "ENVIRONMENT"
        }
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
  }
}
