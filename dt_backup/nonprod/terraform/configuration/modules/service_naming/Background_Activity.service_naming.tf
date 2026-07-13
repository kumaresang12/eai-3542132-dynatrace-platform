resource "dynatrace_service_naming" "Background_Activity" {
  name    = "Background Activity"
  enabled = true
  format  = "{Host:Environment:EAI}-{ProcessGroup:SpringBootAppName}"
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
        attribute = "CLOUD_FOUNDRY_ORG_NAME"
      }
      string {
        # case_sensitive = false
        negate           = true
        operator         = "EXISTS"
      }
    }
    condition {
      process_metadata {
        attribute   = "PROCESS_GROUP_PREDEFINED_METADATA"
        dynamic_key = "SPRINGBOOT_APP_NAME"
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
  }
}
