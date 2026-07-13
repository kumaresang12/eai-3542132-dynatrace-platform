resource "dynatrace_log_sensitive_data_masking" "_Built-in_Email_masking" {
  name         = "[Built-in] Email masking"
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADVidWlsdGluOmxvZ21vbml0b3Jpbmcuc2Vuc2l0aXZlLWRhdGEtbWFza2luZy1zZXR0aW5ncwAGdGVuYW50AAZ0ZW5hbnQAJDFhN2ZkZTNhLTMzOWEtNDIzNS1iZWU2LTdkMTk3M2I2MTg2Nr7vVN4V2t6t"
  scope        = "environment"
  masking {
    type        = "STRING"
    expression  = "[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)+"
    replacement = "<masked-email-log>"
  }
}
