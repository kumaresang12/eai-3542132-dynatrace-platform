resource "dynatrace_generic_types" "sql_db2_host" {
  name         = "sql:db2_host"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-db2 2.5.0"
  display_name = "DB2 Host"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDQxZjZhZGUyLTllZWYtNWVhMC05YzRjLTdmYzE2ZDUwMDU1Zb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "host"
      id_pattern            = "db2_host_{device.address}"
      instance_name_pattern = "DB2 {device.address}"
      attributes {
        attribute {
          display_name = "IP Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          key     = "Hostname"
          pattern = "{device.name}"
        }
        attribute {
          display_name = "OS Full Version"
          key          = "OSFullVersion"
          pattern      = "{os_full_version}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "os_full_version"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(db2)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "host"
      id_pattern            = "db2_host_{device.address}"
      instance_name_pattern = "DB2 {device.address}"
      attributes {
        attribute {
          display_name = "IP Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          key     = "Hostname"
          pattern = "{device.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(db2)"
          source_type = "Metrics"
        }
      }
    }
  }
}
