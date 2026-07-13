resource "dynatrace_generic_types" "sql_postgres_host" {
  name         = "sql:postgres_host"
  enabled      = true
  created_by   = "com.dynatrace.extension.postgres 2.9.7"
  display_name = "Postgres Host"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDc0NDZmNTUyLWJjMjgtNWEwNy1hZWRiLWQyNjZiNTk4YmM4ML7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "host"
      id_pattern            = "postgres_host_{device.address}"
      instance_name_pattern = "{device.name}"
      attributes {
        attribute {
          display_name = "Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Hostname"
          key          = "Hostname"
          pattern      = "{device.name}"
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
