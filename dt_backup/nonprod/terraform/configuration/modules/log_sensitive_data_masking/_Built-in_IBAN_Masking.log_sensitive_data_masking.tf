resource "dynatrace_log_sensitive_data_masking" "_Built-in_IBAN_Masking" {
  name         = "[Built-in] IBAN Masking"
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADVidWlsdGluOmxvZ21vbml0b3Jpbmcuc2Vuc2l0aXZlLWRhdGEtbWFza2luZy1zZXR0aW5ncwAGdGVuYW50AAZ0ZW5hbnQAJGY1ZTkyMDRjLTQwNzItNDFjYS1hMDhhLWNiOWY5NjA1ZGMyOb7vVN4V2t6t"
  scope        = "environment"
  masking {
    type        = "STRING"
    expression  = "(?:^|[^-\\w])([A-Z]{2}\\d{2}(?: [A-Z0-9]{4}){3,7}(?: [A-Z0-9]{1,3})?|[A-Z]{2}\\d{2}[A-Z0-9]{12,30})\\b"
    replacement = "<masked-iban-log>"
  }
}
