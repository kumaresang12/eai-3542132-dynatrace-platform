resource "dynatrace_network_monitor" "Descartes_Visual_Compliance" {
  name          = "Descartes Visual Compliance"
  type          = "HTTP"
  # enabled     = true
  frequency_min = 10
  locations     = [ "SYNTHETIC_LOCATION-0000000000000090", "SYNTHETIC_LOCATION-000000000000003C" ]
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
      name         = "Descartes Visual Compliance"
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
