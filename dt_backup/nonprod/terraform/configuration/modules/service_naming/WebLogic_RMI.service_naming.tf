resource "dynatrace_service_naming" "WebLogic_RMI" {
  name    = "WebLogic RMI"
  enabled = true
  format  = "{Host:Environment:EAI}-{ProcessGroup:DetectedName}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TYPE"
      }
      service_type {
        # negate = false
        operator = "EQUALS"
        value    = "RMI_SERVICE"
      }
    }
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TECHNOLOGY"
      }
      tech {
        # negate = false
        operator = "EQUALS"
        value {
          type = "ORACLE_WEBLOGIC"
        }
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
