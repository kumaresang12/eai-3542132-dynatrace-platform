resource "dynatrace_network_monitor" "Visual_Compliance_RPS_SOAP-Test_Env" {
  name          = "Visual Compliance RPS SOAP - Test Env"
  type          = "HTTP"
  # enabled     = true
  frequency_min = 15
  locations     = [ "SYNTHETIC_LOCATION-0000000000000090", "SYNTHETIC_LOCATION-000000000000003B" ]
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
      name         = "Visual Compliance RPS SOAP - Test Env"
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
