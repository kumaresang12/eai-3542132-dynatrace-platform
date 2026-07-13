resource "dynatrace_generic_types" "sql_sql_server_availability_group" {
  name         = "sql:sql_server_availability_group"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-server 2.11.5"
  display_name = "SQL Server Availability Group"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGQyMGIzMTRkLTJiYTYtNWU1Ni1iODQ0LTg1ZjBhZDlmZDA2Mr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "resourcerequest"
      id_pattern            = "sql_server_availability_group_{device}_{availability.group.id}"
      instance_name_pattern = "{availability.group.name} (via: {device.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Device URL"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Automated backup preference"
          key          = "ag_backup_preference"
          pattern      = "{availability.group.automated_backup_preference}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.group.id"
        }
        required_dimension {
          key = "availability.group.name"
        }
        required_dimension {
          key = "availability.group.automated_backup_preference"
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
          condition   = "$prefix(sql-server)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "resourcerequest"
      id_pattern            = "sql_server_availability_group_{device}_{availability.group.id}"
      instance_name_pattern = "{availability.group.name} (via: {device.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Device URL"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Primary recovery health"
          key          = "ag_prim_rec_health"
          pattern      = "{availability.group.primary_recovery_health}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.group.id"
        }
        required_dimension {
          key = "availability.group.name"
        }
        required_dimension {
          key = "availability.group.primary_recovery_health"
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
          condition   = "$prefix(sql-server)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "resourcerequest"
      id_pattern            = "sql_server_availability_group_{device}_{availability.group.id}"
      instance_name_pattern = "{availability.group.name} (via: {device.name})"
      attributes {
        attribute {
          display_name = "Device URL"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Secondary recovery health"
          key          = "ag_sec_rec_health"
          pattern      = "{availability.group.secondary_recovery_health}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.group.id"
        }
        required_dimension {
          key = "availability.group.name"
        }
        required_dimension {
          key = "availability.group.secondary_recovery_health"
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
          condition   = "$prefix(sql-server)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "resourcerequest"
      id_pattern            = "sql_server_availability_group_{device}_{availability.group.id}"
      instance_name_pattern = "{availability.group.name} (via: {device.name})"
      attributes {
        attribute {
          display_name = "Device URL"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Synchronization health"
          key          = "ag_sync_health"
          pattern      = "{availability.group.synchronization_health}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.group.id"
        }
        required_dimension {
          key = "availability.group.name"
        }
        required_dimension {
          key = "availability.group.synchronization_health"
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
          condition   = "$prefix(sql-server)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "resourcerequest"
      id_pattern            = "sql_server_availability_group_{device}_{availability.group.id}"
      instance_name_pattern = "{availability.group.name} (via: {device.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Device URL"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Group name"
          key          = "ag_name"
          pattern      = "{availability.group.name}"
        }
        attribute {
          display_name = "Group ID"
          key          = "ag_id"
          pattern      = "{availability.group.id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.group.name"
        }
        required_dimension {
          key = "availability.group.id"
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
          condition   = "$prefix(sql-server)"
          source_type = "Metrics"
        }
      }
    }
  }
}
