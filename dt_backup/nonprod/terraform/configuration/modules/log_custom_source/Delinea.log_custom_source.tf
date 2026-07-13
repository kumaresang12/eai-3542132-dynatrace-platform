resource "dynatrace_log_custom_source" "Delinea" {
  name    = "Delinea"
  enabled = true
  scope   = "environment"
  custom_log_source {
    type = "LOG_PATH_PATTERN"
    values_and_enrichment {
      custom_log_source_with_enrichment {
        path = "C:\\RabbitMq\\log\\*.log"
      }
      custom_log_source_with_enrichment {
        path = "C:\\inetpub\\wwwroot\\SecretServer\\log\\*.log"
      }
      custom_log_source_with_enrichment {
        path = "L:\\MSSQL\\*.ldf"
      }
      custom_log_source_with_enrichment {
        path = "C:\\Program Files\\Delinea\\Delinea Connector\\*.txt"
      }
      custom_log_source_with_enrichment {
        path = "C:\\Program Files\\Thycotic Software Ltd\\Distributed Engine\\log\\*.log"
      }
      custom_log_source_with_enrichment {
        path = "C:\\RabbitMq\\*.log"
      }
    }
  }
}
