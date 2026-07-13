resource "dynatrace_log_buckets" "default_logs" {
  enabled      = true
  bucket_name  = "default_logs"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACQxNGViZDQ3MC0xZWI2LTM0N2MtYWJlYy01ZGY0Y2E2ZTg4OGW-71TeFdrerQ"
  matcher      = "*"
  rule_name    = "default"
}
