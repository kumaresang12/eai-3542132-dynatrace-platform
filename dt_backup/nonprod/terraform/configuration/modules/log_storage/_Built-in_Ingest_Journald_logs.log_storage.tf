resource "dynatrace_log_storage" "_Built-in_Ingest_Journald_logs" {
  name            = "[Built-in] Ingest Journald logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACQ3MmViZDViYS1lOTY0LTMzNzAtYWMzZS03NjhjODAxNDM0Yzi-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source.origin"
      operator  = "MATCHES"
      values    = [ "JOURNALD_LOG_DETECTOR" ]
    }
  }
}
