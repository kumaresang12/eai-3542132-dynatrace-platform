resource "dynatrace_log_custom_source" "DigiCert_Logs" {
  name    = "DigiCert Logs"
  enabled = true
  scope   = "HOST-B87751CA2A91010E"
  custom_log_source {
    type            = "LOG_PATH_PATTERN"
    # accept_binary = false
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "c:\\Program Files\\DigiCert\\CertData\\*.log"
      }
      custom_log_source_with_enrichment {
        path = "c:\\Program Files\\DigiCert\\CertData\\*.csv"
      }
      custom_log_source_with_enrichment {
        path = "c:\\Program Files\\DigiCert\\CertData\\*.json"
      }
    }
  }
}
