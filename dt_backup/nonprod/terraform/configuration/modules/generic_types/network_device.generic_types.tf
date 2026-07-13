resource "dynatrace_generic_types" "network_device" {
  name         = "network:device"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-traps-generic 2.1.1"
  display_name = "Network Device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGFlYWIyNTg2LTBiNjYtNWU0YS04N2JlLWUwNDBlOGE5MzZkOb7vVN4V2t6t"
  rules {
    rule {
      id_pattern = "network_device_{device.address}"
      attributes {
        attribute {
          display_name = "Device Address"
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
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.snmp-traps-generic.traps.count)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern = "network_device_{device.address}"
      attributes {
        attribute {
          display_name = "Device Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(snmptraps)"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
