resource "dynatrace_log_custom_source" "EAI" {
  name    = "EAI 6068"
  enabled = true
  scope   = "HOST_GROUP-C5EF8E233CCA8FB7"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/fedex/eici/eicdataentry/logs/EiciCdeAgent-Error.log"
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eici/eicscan/logs/EiciScanAgent-Error.log"
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eici/eicscan/logs/secure/logs/access.log"
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eici/eicrecog/logs/RecognitionParser.log"
      }
    }
  }
}
