resource "dynatrace_network_monitor" "ENS_HealthCheck" {
  name          = "ENS HealthCheck"
  type          = "HTTP"
  # enabled     = true
  frequency_min = 5
  locations     = [ "SYNTHETIC_LOCATION-000000000000004D", "SYNTHETIC_LOCATION-0000000000000093" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 1
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    enabled = false
  }
  steps {
    step {
      name         = "ENS HealthCheck"
      request_type = ""
      constraints {
        constraint {
          type = "HTTP_STATUSES"
          properties = {
            "value"    = "400"
            "operator" = "<"
          }
        }
      }
    }
  }
}
