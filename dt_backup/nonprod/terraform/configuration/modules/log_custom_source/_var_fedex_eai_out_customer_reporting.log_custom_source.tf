resource "dynatrace_log_custom_source" "_var_fedex_eai_out_customer_reporting" {
  name    = "/var/fedex/eai*/*.out customer reporting"
  enabled = true
  scope   = "environment"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai*/*.out"
      }
    }
  }
}
