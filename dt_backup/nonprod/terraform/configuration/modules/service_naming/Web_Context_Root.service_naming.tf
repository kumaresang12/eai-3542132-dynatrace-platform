resource "dynatrace_service_naming" "Web_Context_Root" {
  name    = "Web Context Root"
  enabled = true
  format  = "{CloudFoundryOrganization:Name}:{ProcessGroup:CloudFoundryAppName}:{Service:WebContextRoot}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TYPE"
      }
      service_type {
        # negate = false
        operator = "EQUALS"
        value    = "WEB_REQUEST_SERVICE"
      }
    }
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_WEB_CONTEXT_ROOT"
      }
      string {
        case_sensitive = true
        negate         = true
        operator       = "EQUALS"
        value          = "/"
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
