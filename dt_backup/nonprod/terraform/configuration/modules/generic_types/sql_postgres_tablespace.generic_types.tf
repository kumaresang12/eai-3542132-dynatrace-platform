resource "dynatrace_generic_types" "sql_postgres_tablespace" {
  name         = "sql:postgres_tablespace"
  enabled      = true
  created_by   = "com.dynatrace.extension.postgres 2.9.7"
  display_name = "Postgres Tablespace"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDRhYWUxN2JiLWZiN2EtNTRmOC1hNTA3LTJhOWM2ODU2ODA0OL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "azure-database-for-postgresql"
      id_pattern            = "postgres_database_{device.address}_{device.port}_{tablespace}"
      instance_name_pattern = "{tablespace} ({device.name}:{device.port})"
      attributes {
        attribute {
          display_name = "Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Hostname"
          key          = "hostname"
          pattern      = "{device.name}"
        }
        attribute {
          display_name = "Port"
          key          = "port"
          pattern      = "{device.port}"
        }
        attribute {
          display_name = "Tablespace"
          key          = "tablespace"
          pattern      = "{tablespace}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.port"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "tablespace"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(postgres)"
          source_type = "Metrics"
        }
      }
    }
  }
}
