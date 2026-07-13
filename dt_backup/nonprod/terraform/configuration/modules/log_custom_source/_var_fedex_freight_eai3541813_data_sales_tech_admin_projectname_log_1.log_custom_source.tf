resource "dynatrace_log_custom_source" "_var_fedex_freight_eai3541813_data_sales_tech_admin_projectname_log_1" {
  name    = "/var/fedex/freight/eai3541813/data/sales_tech/admin/<projectname>/log/"
  enabled = true
  scope   = "HOST_GROUP-A863F6C80E4E9A18"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "/var/fedex/freight/eai3541813/data/sales_tech/admin/*/error/*.err"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${2}.err"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/freight/eai3541813/data/sales_tech/admin/*/*log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${2}"
          }
        }
      }
      custom_log_source_with_enrichment {
        path = "/var/fedex/freight/eai3541813/data/sales_tech/admin/*/log/*.log"
        enrichment {
          enrichment {
            type  = "attribute"
            key   = "log.file.path"
            value = "$${0}"
          }
          enrichment {
            type  = "attribute"
            key   = "log.file.name"
            value = "$${2}"
          }
        }
      }
    }
  }
}
