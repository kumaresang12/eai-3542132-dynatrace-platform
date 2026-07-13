resource "dynatrace_generic_types" "sql_sql_server_instance" {
  name         = "sql:sql_server_instance"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-server 2.11.5"
  display_name = "SQL Server Instance"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDg3YmUwZmEzLWI0NDUtNWU1Mi05ZjcwLWJkNzkxZjc5YjExM77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "sql-microsoft"
      id_pattern            = "sql_server_instance_{device}_{server}_{instance}"
      instance_name_pattern = "{instance} on {server} (via: {device})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Device URL"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Instance Name"
          key          = "instance"
          pattern      = "{instance}"
        }
        attribute {
          display_name = "Server Name"
          key          = "server"
          pattern      = "{server}"
        }
        attribute {
          display_name = "DB Instance Version"
          key          = "server_version"
          pattern      = "{server_version}"
        }
        attribute {
          display_name = "Major Version"
          key          = "major_version"
          pattern      = "{major_version}"
        }
        attribute {
          display_name = "Start Time"
          key          = "start_time"
          pattern      = "{start_time}"
        }
        attribute {
          display_name = "Edition"
          key          = "edition"
          pattern      = "{edition}"
        }
        attribute {
          display_name = "Affinity Type"
          key          = "affinity_type"
          pattern      = "{affinity_type}"
        }
        attribute {
          display_name = "Endpoint Metadata"
          key          = "endpoint_metadata"
          pattern      = "{endpoint_metadata}"
        }
        attribute {
          display_name = "Ports"
          key          = "dt.listen_ports"
          pattern      = "{device.port}"
        }
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
        attribute {
          display_name = "Fully Qualified Server Name"
          key          = "qual_server_name"
          pattern      = "{qual_server_name}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "instance"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "server"
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
    rule {
      icon_pattern          = "sql-microsoft"
      id_pattern            = "sql_server_instance_{device}_{server}_{instance}"
      instance_name_pattern = "{instance} on {server} (via: {device})"
      required_dimensions {
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(com.dynatrace.extension.sql-server)"
        }
        required_dimension {
          key = "instance"
        }
        required_dimension {
          key = "server"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.name"
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
