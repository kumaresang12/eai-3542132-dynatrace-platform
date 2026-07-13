resource "dynatrace_log_custom_source" "FDXF_App_Logs_var_fedex_eai" {
  name    = "FDXF App Logs (/var/fedex/eai...)"
  enabled = true
  scope   = "environment"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai*/logs/*.out"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${2}.out"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai*/logs/*/archived/*.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${3}.log"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai*/*/*/*.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${4}log"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai*/logs/*.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${2}log"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai*/*/logs/*/*/*.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${5}log"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/eai*/*/*/*/logs/*.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${5}log"
          }
        }
      }
    }
  }
}
