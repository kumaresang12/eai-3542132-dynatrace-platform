resource "dynatrace_service_naming" "PCF" {
  name    = "PCF"
  enabled = true
  format  = "{CloudFoundryOrganization:Name}-{ProcessGroup:CloudFoundryAppName}::{Service:DetectedName}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "HOST_GROUP_NAME"
      }
      string {
        case_sensitive = true
        # negate       = false
        operator       = "BEGINS_WITH"
        value          = "pcf"
      }
    }
    condition {
      key {
        type      = "STATIC"
        attribute = "PROCESS_GROUP_DETECTED_NAME"
      }
      string {
        case_sensitive = true
        negate         = true
        operator       = "EQUALS"
        value          = "rep"
      }
    }
  }
}
