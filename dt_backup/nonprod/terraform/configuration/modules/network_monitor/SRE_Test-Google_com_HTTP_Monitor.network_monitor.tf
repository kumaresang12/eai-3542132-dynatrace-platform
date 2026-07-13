resource "dynatrace_network_monitor" "SRE_Test-Google_com_HTTP_Monitor" {
  name          = "SRE Test - Google.com HTTP Monitor"
  type          = "HTTP"
  enabled       = false
  frequency_min = 5
  locations     = [ "SYNTHETIC_LOCATION-000000000000000F", "SYNTHETIC_LOCATION-0000000000000044" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 3
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    enabled = false
  }
  steps {
    step {
      name         = "Google.com health check"
      request_type = ""
      constraints {
        constraint {
          type = "HTTP_STATUSES"
          properties = {
            "value"    = ">=200, <400"
            "operator" = "in"
          }
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
