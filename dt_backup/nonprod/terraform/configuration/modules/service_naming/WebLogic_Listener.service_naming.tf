resource "dynatrace_service_naming" "WebLogic_Listener" {
  name    = "WebLogic Listener"
  enabled = true
  format  = "{Host:Environment:EAI}-{Service:DetectedName}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TYPE"
      }
      service_type {
        # negate = false
        operator = "EQUALS"
        value    = "MESSAGING_SERVICE"
      }
    }
    condition {
      process_metadata {
        attribute   = "PROCESS_GROUP_PREDEFINED_METADATA"
        dynamic_key = "WEB_LOGIC_NAME"
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
  }
}
