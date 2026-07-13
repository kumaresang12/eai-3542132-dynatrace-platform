resource "dynatrace_network_monitor" "FXF_User-accountPermissionsList_auth0-notoken" {
  name          = "FXF User - accountPermissionsList (auth0-notoken)"
  type          = "HTTP"
  # enabled     = true
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
      name         = "FXF User - accountPermissionsList (auth0-notoken)"
      request_type = ""
      constraints {
        constraint {
          type = "HTTP_STATUSES"
          properties = {
            "operator" = "in"
            "value"    = ">=200, <500"
          }
        }
      }
    }
  }
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "project"
      source  = "USER"
      value   = "fxf-freight"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "purpose"
      source  = "USER"
      value   = "synthetic-test"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "team"
      source  = "USER"
      value   = "SRE"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "app"
      source  = "USER"
      value   = "profile"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "tier"
      source  = "USER"
      value   = "1"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "purpose"
      source  = "USER"
      value   = "day1-synthetic"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "auth"
      source  = "USER"
      value   = "ping-token-pending"
    }
  }
}
