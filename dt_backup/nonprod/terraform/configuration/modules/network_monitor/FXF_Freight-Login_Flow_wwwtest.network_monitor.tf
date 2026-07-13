resource "dynatrace_network_monitor" "FXF_Freight-Login_Flow_wwwtest" {
  name          = "FXF Freight - Login Flow (wwwtest)"
  type          = "BROWSER"
  # enabled     = true
  frequency_min = 15
  locations     = [ "SYNTHETIC_LOCATION-000000000000000F", "SYNTHETIC_LOCATION-0000000000000044" ]
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
      name         = "Set Akamai bypass header"
      request_type = ""
    }
    step {
      name         = "Navigate to FXF login page"
      request_type = ""
    }
    step {
      name         = "Enter email address"
      request_type = ""
    }
    step {
      name         = "Submit email"
      request_type = ""
    }
    step {
      name         = "Enter password"
      request_type = ""
    }
    step {
      name         = "Submit password"
      request_type = ""
    }
    step {
      name         = "Enter OTP code"
      request_type = ""
    }
    step {
      name         = "Submit OTP"
      request_type = ""
    }
    step {
      name         = "Validate login success"
      request_type = ""
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
      value   = "login-flow"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "tier"
      source  = "USER"
      value   = "1"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "project"
      source  = "USER"
      value   = "fxf-freight"
    }
  }
}
