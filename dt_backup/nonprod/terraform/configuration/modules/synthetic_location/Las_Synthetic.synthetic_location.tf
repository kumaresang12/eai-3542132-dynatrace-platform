resource "dynatrace_synthetic_location" "Las_Synthetic" {
  name                                  = "Las Synthetic"
  # auto_update_chromium                = true
  # availability_location_outage        = false
  # availability_node_outage            = false
  availability_notifications_enabled    = true
  city                                  = "Las Vegas"
  country_code                          = "US"
  deployment_type                       = "STANDARD"
  fips_mode                             = "DISABLED"
  latitude                              = 36.2973
  location_node_outage_delay_in_minutes = 3
  longitude                             = -115.2418
  # nam_execution_supported             = false
  node_size                             = "UNSUPPORTED"
  nodes                                 = [ "729365807" ]
  region_code                           = "NV"
  # use_new_kubernetes_version          = false
}
