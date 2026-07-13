resource "dynatrace_service_naming" "PCF-SpringName" {
  name    = "PCF-SpringName"
  enabled = true
  format  = "{CloudFoundryOrganization:Name}-{ProcessGroup:CloudFoundryAppName}::{ProcessGroup:SpringBootProfileName}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "CLOUD_FOUNDRY_ORG_NAME"
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
        dynamic_key = "SPRINGBOOT_PROFILE_NAME"
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
  }
}
