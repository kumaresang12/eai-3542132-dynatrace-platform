resource "dynatrace_service_naming" "Background_Activity_PCF" {
  name    = "Background Activity PCF"
  enabled = true
  format  = "{CloudFoundryOrganization:Name}-{ProcessGroup:CloudFoundryAppName}"
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
        # negate         = false
        operator         = "EXISTS"
      }
    }
  }
}
