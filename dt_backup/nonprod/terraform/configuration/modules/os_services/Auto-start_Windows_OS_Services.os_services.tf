resource "dynatrace_os_services" "Auto-start_Windows_OS_Services" {
  name                      = "Auto-start Windows OS Services"
  enabled                   = false
  alert_activation_duration = 1
  alerting                  = true
  insert_after              = "vu9U3hXa3q0AAAABAB5idWlsdGluOm9zLXNlcnZpY2VzLW1vbml0b3JpbmcABnRlbmFudAAGdGVuYW50ACRkNzgzYWZlNS1hOGViLTM0MzItYjgwYS0zOWYzNGVmNjJlYzO-71TeFdrerQ"
  monitoring                = false
  # not_installed_alerting  = false
  scope                     = "environment"
  status_condition_windows  = "$not($eq(running))"
  system                    = "WINDOWS"
  detection_conditions_windows {
    detection_conditions_window {
      property          = "StartupType"
      startup_condition = "$eq(auto)"
    }
  }
}
