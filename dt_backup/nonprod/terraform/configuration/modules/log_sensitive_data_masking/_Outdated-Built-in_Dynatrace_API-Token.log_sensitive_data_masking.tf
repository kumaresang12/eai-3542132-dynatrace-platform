resource "dynatrace_log_sensitive_data_masking" "_Outdated-Built-in_Dynatrace_API-Token" {
  name         = "[Outdated-Built-in] Dynatrace API-Token"
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABADVidWlsdGluOmxvZ21vbml0b3Jpbmcuc2Vuc2l0aXZlLWRhdGEtbWFza2luZy1zZXR0aW5ncwAGdGVuYW50AAZ0ZW5hbnQAJDIzMzljYTg0LTE3MzEtNDdlMi04ZTAxLTdjNjViM2E0NDM3Nr7vVN4V2t6t"
  scope        = "environment"
  masking {
    type        = "STRING"
    expression  = "\\bdt0[a-zA-Z]{1}[0-9]{2}\\.[a-zA-Z0-9-]+\\.([a-zA-Z0-9]{64})\\b"
    replacement = "<Masked_API_token>"
  }
}
