resource "dynatrace_network_monitor" "FXF-PING_LogIn_Test" {
  name          = "FXF-PING LogIn Test"
  type          = "BROWSER"
  enabled       = false
  frequency_min = 15
  locations     = [ "SYNTHETIC_LOCATION-9E4423CA8535EDAB", "SYNTHETIC_LOCATION-9A14BC70877A2763" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 1
    # global_outages                          = true
    # local_outages                           = false
  }
  steps {
    step {
      name         = "Loading of \"https://auth-qa.fedexfreight.com/am/json/realms/root/realms/alpha/authenticate?authIndexType=service&authIndexValue=FXF_Login\""
      request_type = ""
    }
  }
}
