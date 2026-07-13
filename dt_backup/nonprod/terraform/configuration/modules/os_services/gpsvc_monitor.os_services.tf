resource "dynatrace_os_services" "gpsvc_monitor" {
  name                      = "gpsvc monitor"
  enabled                   = true
  alert_activation_duration = 1
  alerting                  = true
  insert_after              = "vu9U3hXa3q0AAAABAB5idWlsdGluOm9zLXNlcnZpY2VzLW1vbml0b3JpbmcABEhPU1QAEDFEOUNBRkYwRjJFMzVBQjYAJGVhNGU4MGVmLWMyMDktMzRmYy1hZTU3LWU0ZWMzYjFiOTBmY77vVN4V2t6t"
  monitoring                = true
  # not_installed_alerting  = false
  scope                     = "HOST-1D9CAFF0F2E35AB6"
  status_condition_windows  = "$not($eq(running))"
  system                    = "WINDOWS"
  detection_conditions_windows {
    detection_conditions_window {
      condition = "$eq(gpsvc)"
      property  = "ServiceName"
    }
  }
  metadata {
    item {
      metadata_key   = "source"
      metadata_value = "active-directory"
    }
  }
}
