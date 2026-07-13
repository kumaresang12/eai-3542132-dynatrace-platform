resource "dynatrace_log_sensitive_data_masking" "_Built-in_URL_Query_Values" {
  name         = "[Built-in] URL Query Values"
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADVidWlsdGluOmxvZ21vbml0b3Jpbmcuc2Vuc2l0aXZlLWRhdGEtbWFza2luZy1zZXR0aW5ncwAGdGVuYW50AAZ0ZW5hbnQAJGY2YjU1ZTkwLTU0NjYtNGQxZi04NTkyLWQyMWJjMzM2YzE5Zb7vVN4V2t6t"
  scope        = "environment"
  masking {
    type        = "STRING"
    expression  = "[\\?&](?:[\\[\\]\\w.~%;#-]+)=([\\[\\]\\w.~%;#-]+)"
    replacement = "<masked-value-log>>"
  }
}
