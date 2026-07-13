resource "dynatrace_log_storage" "_Built-in_Ingest_logs_from_custom_log_sources" {
  name            = "[Built-in] Ingest logs from custom log sources"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACQ2YWYwNmU0MS1kZmNhLTRmMzEtYTY3Yi0yM2E4MWQxODc1ZTG-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source.origin"
      operator  = "MATCHES"
      values    = [ "CUSTOM_LOG" ]
    }
  }
}
