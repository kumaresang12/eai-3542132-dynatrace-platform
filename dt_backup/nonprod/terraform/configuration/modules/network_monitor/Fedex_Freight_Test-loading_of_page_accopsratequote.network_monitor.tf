resource "dynatrace_network_monitor" "Fedex_Freight_Test-loading_of_page_accopsratequote" {
  name          = "Fedex Freight Test - loading of page /accopsratequote/"
  type          = "BROWSER"
  # enabled     = true
  frequency_min = 15
  locations     = [ "SYNTHETIC_LOCATION-0000000000000090", "SYNTHETIC_LOCATION-0000000000000080", "SYNTHETIC_LOCATION-9A14BC70877A2763" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 1
    # global_outages                          = true
    # local_outages                           = false
  }
  steps {
    step {
      name         = "loading of page /accopsratequote/"
      request_type = ""
    }
  }
}
