resource "dynatrace_log_storage" "_Built-in_Windows_system_application_and_security_logs" {
  name            = "[Built-in] Windows system, application, and security logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACRjZDYyODI3ZC1kNzk3LTNlMDQtYTA3Yy1mMDQ4NDljZDU1Mzi-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows System Log", "Windows Security Log", "Windows Application Log" ]
    }
  }
}
