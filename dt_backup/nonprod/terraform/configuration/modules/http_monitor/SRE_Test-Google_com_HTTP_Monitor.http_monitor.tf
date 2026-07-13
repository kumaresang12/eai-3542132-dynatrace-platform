resource "dynatrace_http_monitor" "SRE_Test-Google_com_HTTP_Monitor" {
  name      = "SRE Test - Google.com HTTP Monitor"
  # enabled = false
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
      description = "Google.com health check"
      method      = "GET"
      url         = "https://www.google.com"
      configuration {
        # accept_any_certificate = false
        follow_redirects         = true
      }
      validation {
        rule {
          type          = "httpStatusesList"
          pass_if_found = true
          value         = ">=200, <400"
        }
      }
    }
  }
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "team"
      source  = "USER"
      value   = "SRE"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "purpose"
      source  = "USER"
      value   = "test"
    }
  }
}
