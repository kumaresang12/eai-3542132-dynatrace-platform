resource "dynatrace_processgroup_naming" "Eden" {
  name    = "Eden"
  enabled = true
  format  = "WebLogic-{Host:Environment:EAI}-{ProcessGroup:WebLogicName/^.......}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "PROCESS_GROUP_TECHNOLOGY"
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
    condition {
      custom_host_metadata {
        attribute = "HOST_CUSTOM_METADATA"
        dynamic_key {
          key    = "EAI"
          source = "ENVIRONMENT"
        }
      }
      string {
        case_sensitive = true
        # negate       = false
        operator       = "EQUALS"
        value          = "5294"
      }
    }
  }
}
