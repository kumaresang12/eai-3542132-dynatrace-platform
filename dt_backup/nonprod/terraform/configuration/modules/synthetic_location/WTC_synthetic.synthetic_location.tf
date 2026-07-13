resource "dynatrace_synthetic_location" "WTC_synthetic" {
  name                                  = "WTC synthetic"
  # auto_update_chromium                = true
  # availability_location_outage        = false
  # availability_node_outage            = false
  availability_notifications_enabled    = true
  city                                  = "Memphis"
  country_code                          = "US"
  deployment_type                       = "STANDARD"
  fips_mode                             = "DISABLED"
  latitude                              = 35.1387
  location_node_outage_delay_in_minutes = 3
  longitude                             = -90.0095
  # nam_execution_supported             = false
  node_size                             = "UNSUPPORTED"
  nodes                                 = [ "362263306" ]
  region_code                           = "TN"
  # use_new_kubernetes_version          = false
}
