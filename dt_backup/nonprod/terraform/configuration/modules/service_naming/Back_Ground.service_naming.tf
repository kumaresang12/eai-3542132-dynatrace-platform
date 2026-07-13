resource "dynatrace_service_naming" "Back_Ground" {
  name    = "Back Ground"
  enabled = true
  format  = "{Host:Environment:EAI}-{ProcessGroup:SpringBootStartupClass/[^.]+$}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TYPE"
      }
      service_type {
        # negate = false
        operator = "EQUALS"
        value    = "BACKGROUND_ACTIVITY"
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
          type = "JAVA"
        }
      }
    }
    condition {
      process_metadata {
        attribute   = "PROCESS_GROUP_PREDEFINED_METADATA"
        dynamic_key = "SPRINGBOOT_PROFILE_NAME"
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
    condition {
      key {
        type      = "STATIC"
        attribute = "CLOUD_FOUNDRY_ORG_NAME"
      }
      string {
        # case_sensitive = false
        negate           = true
        operator         = "EXISTS"
      }
    }
  }
}
