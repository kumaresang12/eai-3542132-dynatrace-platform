resource "dynatrace_log_custom_source" "EAI_6068_OVO_Logs" {
  name    = "EAI 6068 OVO Logs"
  enabled = true
  scope   = "HOST_GROUP-40419B3901ADABDB"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/fedex/eici/eicscan/logs/secure/logs/access.log"
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eici/eicdataentry/logs/EiciCdeAgent-Error.log"
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eici/eicscan/logs/EiciScanAgent-Error.log"
      }
    }
  }
}
