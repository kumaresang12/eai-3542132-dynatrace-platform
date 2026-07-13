resource "dynatrace_log_custom_source" "Db2_pureScale_LUW_Logs" {
  name    = "Db2 pureScale LUW Logs"
  enabled = true
  scope   = "HOST-825E84EBF2EB1852"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/db2/work/db2mondata/db2mon_DBDSNX_D20260504_T1913.out"
      }
      custom_log_source_with_enrichment {
        path = "/db2/idsnx/db2dump/DIAG012*/cfdiag.12*.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "cfdiag.12$${2}.log"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/db2/idsnx/db2dump/DIAG000*/db2diag.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "db2diag.log"
          }
        }
      }
    }
  }
}
