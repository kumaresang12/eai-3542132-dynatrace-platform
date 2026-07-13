resource "dynatrace_generic_types" "sql_sql_server_host" {
  name         = "sql:sql_server_host"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-server 2.11.5"
  display_name = "SQL Server Host"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDNhMGUxY2M4LTFkNDgtNTgxYi04MzQ4LTM0MGJkN2YyNzUxOL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "host"
      id_pattern            = "sql_server_host_{device.name}"
      instance_name_pattern = "SQL Server Host ({device.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "IP Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "CPU Count"
          key          = "cpu_count"
          pattern      = "{cpu_count}"
        }
        attribute {
          display_name = "Physical Memory (KB)"
          key          = "physical_memory"
          pattern      = "{physical_memory}"
        }
        attribute {
          display_name = "CPU Hyperthreading Ratio"
          key          = "hyperthread_ratio"
          pattern      = "{hyperthread_ratio}"
        }
        attribute {
          display_name = "Virtual Machine Type"
          key          = "virtual_machine_type"
          pattern      = "{virtual_machine_type}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "cpu_count"
        }
        required_dimension {
          key           = "device.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(sql-server.host.cpus)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "host"
      id_pattern            = "sql_server_host_{device.name}"
      instance_name_pattern = "SQL Server Host ({device.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "IP Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
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
          key           = "device.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(sql-server)"
          source_type = "Metrics"
        }
      }
    }
  }
}
