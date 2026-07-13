resource "dynatrace_http_monitor" "LDAP_Testing" {
  name      = "LDAP Testing"
  enabled   = true
  frequency = 1
  locations = [ "SYNTHETIC_LOCATION-124513F75040B965", "SYNTHETIC_LOCATION-9E4423CA8535EDAB", "SYNTHETIC_LOCATION-9A14BC70877A2763" ]
  anomaly_detection {
    loading_time_thresholds {
      enabled = true
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 2
      }
    }
  }
  script {
    request {
      description = "srh09010.ute.fedex.com"
      method      = "GET"
      url         = "https://srh09010.ute.fedex.com"
      configuration {
        # accept_any_certificate = false
        follow_redirects         = true
      }
      validation {
        rule {
          type            = "httpStatusesList"
          # pass_if_found = false
          value           = ">=400"
        }
      }
    }
    request {
      description = "srh09011.ute.fedex.com"
      method      = "GET"
      url         = "https://srh09011.ute.fedex.com"
      configuration {
        # accept_any_certificate = false
        follow_redirects         = true
      }
      validation {
        rule {
          type            = "httpStatusesList"
          # pass_if_found = false
          value           = ">=400"
        }
      }
    }
  }
}
