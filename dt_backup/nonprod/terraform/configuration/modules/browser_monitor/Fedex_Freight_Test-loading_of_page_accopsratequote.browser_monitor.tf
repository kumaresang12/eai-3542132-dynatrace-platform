resource "dynatrace_browser_monitor" "Fedex_Freight_Test-loading_of_page_accopsratequote" {
  name                   = "Fedex Freight Test - loading of page /accopsratequote/"
  enabled                = true
  frequency              = 15
  locations              = [ "GEOLOCATION-F1DDD2B371612F65", "SYNTHETIC_LOCATION-9A14BC70877A2763", "GEOLOCATION-A65079A417EA8B42" ]
  manually_assigned_apps = [ "APPLICATION-EA7C4B59F27D43EB" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
    }
    outage_handling {
      global_outage  = true
      # local_outage = false
      retry_on_error = true
      global_outage_policy {
        consecutive_runs = 1
      }
    }
  }
  key_performance_metrics {
    load_action_kpm = "VISUALLY_COMPLETE"
    xhr_action_kpm  = "VISUALLY_COMPLETE"
  }
  script {
    type = "clickpath"
    configuration {
      # bypass_csp           = false
      # disable_web_security = false
      monitor_frames         = false
      device {
        name        = "Desktop"
        orientation = "landscape"
      }
    }
    events {
      event {
        description = "loading of page /accopsratequote/"
        navigate {
          url = "https://v-eai3535546.test.cloud.fedex.com:8080/AccopsRateQuote/#/start/FedexFreightRateQuote1?code=null&appName=FedexFreightRateQuote1&error=null&errorDescription=null&no-compress"
          wait {
            wait_for = "page_complete"
          }
        }
      }
    }
  }
}
