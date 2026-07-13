resource "dynatrace_os_services" "Auto-start_Linux_OS_Services" {
  name                      = "Auto-start Linux OS Services"
  enabled                   = false
  alert_activation_duration = 1
  alerting                  = true
  insert_after              = "vu9U3hXa3q0AAAABAB5idWlsdGluOm9zLXNlcnZpY2VzLW1vbml0b3JpbmcABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJGNiOTg4ZjQ0LTAyMmYtMzJjNy1hYTEwLWYxMzVmODdlZmZmMr7vVN4V2t6t"
  monitoring                = false
  # not_installed_alerting  = false
  scope                     = "environment"
  status_condition_linux    = "$eq(failed)"
  system                    = "LINUX"
  detection_conditions_linux {
    linux_detection_condition {
      property          = "StartupType"
      startup_condition = "$eq(enabled)"
    }
  }
}
