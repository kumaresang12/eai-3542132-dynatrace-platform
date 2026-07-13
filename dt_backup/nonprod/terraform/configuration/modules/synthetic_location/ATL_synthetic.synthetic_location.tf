resource "dynatrace_synthetic_location" "ATL_synthetic" {
  name                                  = "ATL synthetic"
  # auto_update_chromium                = true
  # availability_location_outage        = false
  # availability_node_outage            = false
  availability_notifications_enabled    = true
  city                                  = "Atlanta"
  country_code                          = "US"
  deployment_type                       = "STANDARD"
  fips_mode                             = "DISABLED"
  latitude                              = 33.6934
  location_node_outage_delay_in_minutes = 3
  longitude                             = -84.448
  # nam_execution_supported             = false
  node_size                             = "UNSUPPORTED"
  nodes                                 = [ "2102624835" ]
  region_code                           = "GA"
  # use_new_kubernetes_version          = false
}
