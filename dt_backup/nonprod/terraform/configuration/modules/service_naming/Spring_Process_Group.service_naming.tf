resource "dynatrace_service_naming" "Spring_Process_Group" {
  name    = "Spring Process Group"
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
        value    = "QUEUE_LISTENER_SERVICE"
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
      process_metadata {
        attribute   = "PROCESS_GROUP_PREDEFINED_METADATA"
        dynamic_key = "SPRINGBOOT_APP_NAME"
      }
      string {
        # case_sensitive = false
        negate           = true
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
