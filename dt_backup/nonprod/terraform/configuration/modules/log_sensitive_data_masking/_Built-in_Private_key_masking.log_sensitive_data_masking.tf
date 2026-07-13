resource "dynatrace_log_sensitive_data_masking" "_Built-in_Private_key_masking" {
  name         = "[Built-in] Private key masking"
  enabled      = false
  insert_after = ""
  scope        = "environment"
  masking {
    type        = "STRING"
    expression  = "-----BEGIN (?:[A-Z]+ )?PRIVATE KEY(?: BLOCK)?-----[\\s\\S]+?-----END (?:[A-Z]+ )?PRIVATE KEY(?: BLOCK)?-----"
    replacement = "<masked-privatekey-log>"
  }
}
