resource "dynatrace_network_monitor" "LDAP_Testing" {
  name          = "LDAP Testing"
  type          = "HTTP"
  # enabled     = true
  frequency_min = 1
  locations     = [ "SYNTHETIC_LOCATION-124513F75040B965", "SYNTHETIC_LOCATION-9E4423CA8535EDAB", "SYNTHETIC_LOCATION-9A14BC70877A2763" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 2
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    # enabled = true
  }
  steps {
    step {
      name         = "srh09010.ute.fedex.com"
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
    step {
      name         = "srh09011.ute.fedex.com"
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
