resource "dynatrace_http_monitor" "ENS_HealthCheck" {
  name      = "ENS HealthCheck"
  enabled   = true
  frequency = 5
  locations = [ "GEOLOCATION-5B3CDE358F4D4B31", "GEOLOCATION-2340C2C253B92657" ]
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
      description = "ENS HealthCheck"
      method      = "GET"
      url         = "https://s-eai3541847.test.cloud.fedex.com/actuator/health"
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
