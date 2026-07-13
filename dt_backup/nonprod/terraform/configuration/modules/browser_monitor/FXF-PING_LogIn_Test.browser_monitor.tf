resource "dynatrace_browser_monitor" "FXF-PING_LogIn_Test" {
  name      = "FXF-PING LogIn Test"
  # enabled = false
  frequency = 15
  locations = [ "SYNTHETIC_LOCATION-9E4423CA8535EDAB", "SYNTHETIC_LOCATION-9A14BC70877A2763" ]
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
        description = "Loading of \"https://auth-qa.fedexfreight.com/am/json/realms/root/realms/alpha/authenticate?authIndexType=service&authIndexValue=FXF_Login\""
        navigate {
          url = "https://auth-qa.fedexfreight.com/am/json/realms/root/realms/alpha/authenticate?authIndexType=service&authIndexValue=FXF_Login"
          wait {
            wait_for = "page_complete"
          }
        }
      }
    }
  }
}
