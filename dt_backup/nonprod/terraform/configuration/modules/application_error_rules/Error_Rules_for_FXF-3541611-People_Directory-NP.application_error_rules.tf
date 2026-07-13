resource "dynatrace_application_error_rules" "Error_Rules_for_FXF-3541611-People_Directory-NP" {
  # ignore_custom_errors_apdex = false
  # ignore_http_errors_apdex   = false
  # ignore_js_errors_apdex     = false
  web_application_id           = "APPLICATION-E65F56CEA87F6D84"
  custom_errors {
    rule {
      capture         = true
      custom_alerting = true
      # impact_apdex  = false
    }
  }
  http_errors {
    rule {
      # capture                     = false
      # consider_blocked_requests   = false
      # consider_for_ai             = false
      # consider_unknown_error_code = false
      error_codes                   = "404"
      filter                        = "ENDS_WITH"
      filter_by_url                 = true
      # impact_apdex                = false
      url                           = "favicon.ico"
    }
    rule {
      capture                       = true
      # consider_blocked_requests   = false
      consider_for_ai               = true
      # consider_unknown_error_code = false
      error_codes                   = "404"
      filter                        = "ENDS_WITH"
      filter_by_url                 = true
      impact_apdex                  = true
      url                           = ".js"
    }
    rule {
      capture                       = true
      # consider_blocked_requests   = false
      consider_for_ai               = true
      # consider_unknown_error_code = false
      error_codes                   = "404"
      filter                        = "ENDS_WITH"
      filter_by_url                 = true
      impact_apdex                  = true
      url                           = ".css"
    }
    rule {
      capture                       = true
      # consider_blocked_requests   = false
      # consider_for_ai             = false
      # consider_unknown_error_code = false
      error_codes                   = "400-499"
      # filter_by_url               = false
      impact_apdex                  = true
    }
    rule {
      capture                       = true
      # consider_blocked_requests   = false
      consider_for_ai               = true
      # consider_unknown_error_code = false
      error_codes                   = "500-599"
      # filter_by_url               = false
      impact_apdex                  = true
    }
    rule {
      capture                       = true
      # consider_blocked_requests   = false
      # consider_for_ai             = false
      # consider_unknown_error_code = false
      error_codes                   = "970-979"
      # filter_by_url               = false
      impact_apdex                  = true
    }
    rule {
      capture                     = true
      # consider_blocked_requests = false
      # consider_for_ai           = false
      consider_unknown_error_code = true
      # filter_by_url             = false
      # impact_apdex              = false
    }
    rule {
      capture                       = true
      consider_blocked_requests     = true
      consider_for_ai               = true
      # consider_unknown_error_code = false
      # filter_by_url               = false
      impact_apdex                  = true
    }
  }
}
