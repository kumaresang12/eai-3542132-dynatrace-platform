resource "dynatrace_log_storage" "_Built-in_Ingest_all_logs" {
  name            = "[Built-in] Ingest all logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACRkODc3NDIzNS05NDg5LTM3YTQtYTM4My1iNWQ4YjdhZmFhMmS-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
}
