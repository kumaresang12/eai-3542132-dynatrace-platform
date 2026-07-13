resource "dynatrace_http_monitor" "FXF_Rate-specialServiceOptions_auth4" {
  name      = "FXF Rate - specialServiceOptions (auth4)"
  enabled   = true
  frequency = 5
  locations = [ "GEOLOCATION-9999453BE4BDB3CD", "GEOLOCATION-3E5C618F168F83BD" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 3
      }
    }
  }
  script {
    request {
      description = "FXF Rate - specialServiceOptions (auth4)"
      method      = "GET"
      url         = "https://api-qa.ltl.tech/fxf-external-rate-auth4/fxfgw-qa/rate/specialServiceOptions"
      configuration {
        # accept_any_certificate = false
        follow_redirects         = true
        headers {
          header {
            name  = "Aka_FedexFreight"
            value = "L6True"
          }
        }
      }
      validation {
        rule {
          type          = "httpStatusesList"
          pass_if_found = true
          value         = ">=200, <400"
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
      key     = "team"
      source  = "USER"
      value   = "SRE"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "app"
      source  = "USER"
      value   = "ltl-rates"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "purpose"
      source  = "USER"
      value   = "day1-synthetic"
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
      value   = "synthetic-test"
    }
  }
}
