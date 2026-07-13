resource "dynatrace_service_naming" "Web_Service_Name" {
  name    = "Web Service Name"
  enabled = true
  format  = "{Host:Environment:EAI}-{Service:WebServiceName}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TYPE"
      }
      service_type {
        # negate = false
        operator = "EQUALS"
        value    = "WEB_SERVICE"
      }
    }
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TOPOLOGY"
      }
      service_topology {
        # negate = false
        operator = "EQUALS"
        value    = "FULLY_MONITORED"
      }
    }
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_WEB_SERVICE_NAME"
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
