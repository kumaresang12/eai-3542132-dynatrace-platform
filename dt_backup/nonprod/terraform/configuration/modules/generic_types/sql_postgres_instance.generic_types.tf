resource "dynatrace_generic_types" "sql_postgres_instance" {
  name         = "sql:postgres_instance"
  enabled      = true
  created_by   = "com.dynatrace.extension.postgres 2.9.7"
  display_name = "Postgres Instance"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGU1ZjcyNDdkLTI4OTEtNTU5NC05ZmE5LTc3ZDA1MWVmZWY3Nb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "postgre"
      id_pattern            = "postgres_instance_{device.address}_{device.port}"
      instance_name_pattern = "{device.name}:{device.port}"
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
          display_name = "Port"
          key          = "dt.listen_ports"
          pattern      = "{device.port}"
        }
        attribute {
          display_name = "DB Instance Version"
          key          = "server_version"
          pattern      = "{server_version}"
        }
        attribute {
          display_name = "Endpoint Metadata"
          key          = "endpoint_metadata"
          pattern      = "{endpoint_metadata}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "device.address"
        }
        required_dimension {
          key = "device.name"
        }
        required_dimension {
          key = "device.port"
        }
      }
      sources {
        source {
          condition   = "$eq(postgres.uptime)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "postgre"
      id_pattern            = "postgres_instance_{device.address}_{device.port}"
      instance_name_pattern = "{device.name}:{device.port}"
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
          display_name = "Port"
          key          = "dt.listen_ports"
          pattern      = "{device.port}"
        }
        attribute {
          display_name = "Endpoint Metadata"
          key          = "endpoint_var"
          pattern      = "{endpoint_metadata}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "device.address"
        }
        required_dimension {
          key = "device.name"
        }
        required_dimension {
          key = "device.port"
        }
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(com.dynatrace.extension.postgres)"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "postgre"
      id_pattern            = "postgres_instance_{device.address}_{device.port}"
      instance_name_pattern = "{device.name}:{device.port}"
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
          display_name = "Port"
          key          = "dt.listen_ports"
          pattern      = "{device.port}"
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
