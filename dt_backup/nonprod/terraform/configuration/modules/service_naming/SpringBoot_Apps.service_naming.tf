resource "dynatrace_service_naming" "SpringBoot_Apps" {
  name    = "SpringBoot Apps"
  enabled = true
  format  = "{Host:Environment:EAI}-{ProcessGroup:SpringBootAppName}"
  conditions {
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
        dynamic_key = "SPRINGBOOT_APP_NAME"
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
        dynamic_key = "CLOUD_FOUNDRY_APP_NAME"
      }
      string {
        # case_sensitive = false
        negate           = true
        operator         = "EXISTS"
      }
    }
  }
}
