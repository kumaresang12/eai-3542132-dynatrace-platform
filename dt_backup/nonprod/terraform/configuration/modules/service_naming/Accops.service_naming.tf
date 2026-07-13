resource "dynatrace_service_naming" "Accops" {
  name    = "Accops"
  enabled = true
  format  = "{Host:Environment:EAI}:{Service:WebContextRoot}"
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
      key {
        type      = "STATIC"
        attribute = "SERVICE_WEB_CONTEXT_ROOT"
      }
      string {
        case_sensitive = true
        # negate       = false
        operator       = "BEGINS_WITH"
        value          = "/Accops"
      }
    }
  }
}
