resource "dynatrace_http_monitor" "FXF_User-userPermissions_auth0-notoken" {
  name      = "FXF User - userPermissions (auth0-notoken)"
  enabled   = true
  frequency = 5
  locations = [ "GEOLOCATION-9999453BE4BDB3CD", "GEOLOCATION-3E5C618F168F83BD" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 3
      }
    }
  }
  script {
    request {
      description = "FXF User - userPermissions (auth0-notoken)"
      method      = "GET"
      url         = "https://api-qa.ltl.tech/fxf-external-user-auth0/user/fdxfweb/userPermissions"
      configuration {
        # accept_any_certificate = false
        follow_redirects         = true
        headers {
          header {
            name  = "Aka_FedexFreight"
            value = "L6True"
          }
        }
      }
      validation {
        rule {
          type          = "httpStatusesList"
          pass_if_found = true
          value         = ">=200, <500"
        }
      }
    }
  }
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "auth"
      source  = "USER"
      value   = "ping-token-pending"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "purpose"
      source  = "USER"
      value   = "day1-synthetic"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "purpose"
      source  = "USER"
      value   = "synthetic-test"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "app"
      source  = "USER"
      value   = "profile"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "project"
      source  = "USER"
      value   = "fxf-freight"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "tier"
      source  = "USER"
      value   = "1"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "team"
      source  = "USER"
      value   = "SRE"
    }
  }
}
