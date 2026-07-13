resource "dynatrace_http_monitor" "Descartes_Visual_Compliance" {
  name      = "Descartes Visual Compliance"
  enabled   = true
  frequency = 10
  locations = [ "GEOLOCATION-490B6966420E218F", "GEOLOCATION-F1DDD2B371612F65" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 1
      }
    }
  }
  script {
    request {
      description = "Descartes Visual Compliance"
      method      = "GET"
      url         = "https://rps88test.visualcompliance.com/RPS/RPSService.svc"
      authentication {
        type        = "BASIC_AUTHENTICATION"
        credentials = "CREDENTIALS_VAULT-63084C74F0FD9AEB"
      }
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
