resource "dynatrace_generic_types" "sql_sql_server_availability_replica" {
  name         = "sql:sql_server_availability_replica"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-server 2.11.5"
  display_name = "SQL Server Availability Replica"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDI4NzZlZjFkLWI1ODQtNThmYi05YWZlLTAzYzEwMGY4MjUyOL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
      attributes {
        attribute {
          display_name = "Device URL"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Availability mode"
          key          = "ar_avail_mode"
          pattern      = "{availability.replica.availability_mode}"
        }
        attribute {
          display_name = "Replica server name"
          key          = "ar_server_name"
          pattern      = "{availability.replica.name}"
        }
        attribute {
          display_name = "Replica instance name"
          key          = "ar_instance_name"
          pattern      = "{availability.replica.instance}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.instance"
        }
        required_dimension {
          key = "availability.replica.availability_mode"
        }
        required_dimension {
          key           = "availability.group.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "availability.group.name"
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
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
      attributes {
        attribute {
          display_name = "Failover mode"
          key          = "ar_fail_mode"
          pattern      = "{availability.replica.failover_mode}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.failover_mode"
        }
        required_dimension {
          key           = "availability.group.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "availability.group.name"
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
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
      attributes {
        attribute {
          display_name = "Is local"
          key          = "ar_is_local"
          pattern      = "{availability.replica.is_local}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.is_local"
        }
        required_dimension {
          key           = "availability.group.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "availability.group.name"
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
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
      attributes {
        attribute {
          display_name = "Role"
          key          = "ar_role"
          pattern      = "{availability.replica.role}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.role"
        }
        required_dimension {
          key           = "availability.group.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "availability.group.name"
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
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
      attributes {
        attribute {
          display_name = "Operational state"
          key          = "ar_op_state"
          pattern      = "{availability.replica.operational_state}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.operational_state"
        }
        required_dimension {
          key           = "availability.group.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "availability.group.name"
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
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
      attributes {
        attribute {
          display_name = "Recovery health"
          key          = "ar_rec_health"
          pattern      = "{availability.replica.recovery_health}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.recovery_health"
        }
        required_dimension {
          key           = "availability.group.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "availability.group.name"
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
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
      attributes {
        attribute {
          display_name = "Synchronization health"
          key          = "ar_sync_health"
          pattern      = "{availability.replica.synchronization_health}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.synchronization_health"
        }
        required_dimension {
          key           = "availability.group.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "availability.group.name"
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
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Connected state"
          key          = "ar_con_state"
          pattern      = "{availability.replica.connected_state}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.connected_state"
        }
        required_dimension {
          key           = "availability.group.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "availability.group.name"
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
      icon_pattern          = "copy"
      id_pattern            = "sql_server_availability_replica_{device}_{availability.group.id}_{availability.replica.id}"
      instance_name_pattern = "{availability.replica.name} (group: {availability.group.name})"
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
          display_name = "Replica name"
          key          = "ar_name"
          pattern      = "{availability.replica.name}"
        }
        attribute {
          display_name = "Replica ID"
          key          = "ar_id"
          pattern      = "{availability.replica.id}"
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
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.replica.name"
        }
        required_dimension {
          key           = "device"
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
