resource "dynatrace_os_services" "adws_monitor" {
  name                      = "adws monitor"
  enabled                   = true
  alert_activation_duration = 1
  alerting                  = true
  insert_after              = ""
  monitoring                = true
  # not_installed_alerting  = false
  scope                     = "HOST-1D9CAFF0F2E35AB6"
  status_condition_windows  = "$not($eq(running))"
  system                    = "WINDOWS"
  detection_conditions_windows {
    detection_conditions_window {
      condition = "$eq(adws)"
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
