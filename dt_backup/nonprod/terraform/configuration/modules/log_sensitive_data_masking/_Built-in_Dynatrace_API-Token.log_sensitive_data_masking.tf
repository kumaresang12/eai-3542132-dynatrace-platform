resource "dynatrace_log_sensitive_data_masking" "_Built-in_Dynatrace_API-Token" {
  name         = "[Built-in] Dynatrace API-Token"
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADVidWlsdGluOmxvZ21vbml0b3Jpbmcuc2Vuc2l0aXZlLWRhdGEtbWFza2luZy1zZXR0aW5ncwAGdGVuYW50AAZ0ZW5hbnQAJGY5OTc2YTU0LWI0ZWYtNDJjMi04OGQyLWQzNWI5MTE5NDMzZb7vVN4V2t6t"
  scope        = "environment"
  masking {
    type        = "STRING"
    expression  = "\\bdt0[a-zA-Z]{1}[0-9]{2}\\.[a-zA-Z0-9-]+\\.([a-zA-Z0-9]{64})\\b"
    replacement = "<masked-token-log>"
  }
}
