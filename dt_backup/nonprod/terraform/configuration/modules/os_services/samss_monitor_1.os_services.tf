resource "dynatrace_os_services" "samss_monitor_1" {
  name                      = "samss monitor"
  enabled                   = true
  alert_activation_duration = 1
  alerting                  = true
  insert_after              = "vu9U3hXa3q0AAAABAB5idWlsdGluOm9zLXNlcnZpY2VzLW1vbml0b3JpbmcABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJGRjMjViODcwLTVlMTAtMzRhOC04YWU3LTNkNjMyYTJlZWNiZL7vVN4V2t6t"
  monitoring                = true
  # not_installed_alerting  = false
  scope                     = "HOST-A462298C3FD40F4A"
  status_condition_windows  = "$not($eq(running))"
  system                    = "WINDOWS"
  detection_conditions_windows {
    detection_conditions_window {
      condition = "$eq(samss)"
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
