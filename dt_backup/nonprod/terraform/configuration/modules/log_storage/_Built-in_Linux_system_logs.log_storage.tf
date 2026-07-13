resource "dynatrace_log_storage" "_Built-in_Linux_system_logs" {
  name            = "[Built-in] Linux system logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACRlYWI2M2I1OS1jM2VhLTM3NDItYmJkNS03N2YxNmQzODIxYzK-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/log/syslog", "/var/log/messages" ]
    }
  }
}
