resource "dynatrace_log_sensitive_data_masking" "_Built-in_Credit_Cards_Masking" {
  name         = "[Built-in] Credit Cards Masking"
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADVidWlsdGluOmxvZ21vbml0b3Jpbmcuc2Vuc2l0aXZlLWRhdGEtbWFza2luZy1zZXR0aW5ncwAGdGVuYW50AAZ0ZW5hbnQAJDMyNDI0NmEzLTczMzMtNGRmZC05YTAyLTZkZTU4NzJiMDNmYb7vVN4V2t6t"
  scope        = "environment"
  masking {
    type        = "STRING"
    expression  = "(?:^|[\\\\\\/\\s=:\"'])((?:(?:6011|(?:352[89]|(?:35[3-8]|64[4-9]|622)[0-9])|(?:(?:5[1-5]|65)[0-9]{2})|(?:4[0-9]{3}))(?:(?:[0-9]{12})|(?: [0-9]{4}){3}))|(?:3[47][0-9]{13}|3[47][0-9]{2} [0-9]{6} [0-9]{5})|(?:(?:603601|603265|621977|603708|602969|601428|603367|603694) ?[0-9]{10,13}))\\b"
    replacement = "<masked-pcard-log>"
  }
}
