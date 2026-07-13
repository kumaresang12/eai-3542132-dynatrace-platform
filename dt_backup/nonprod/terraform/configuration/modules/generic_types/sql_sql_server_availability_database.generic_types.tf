resource "dynatrace_generic_types" "sql_sql_server_availability_database" {
  name         = "sql:sql_server_availability_database"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-server 2.11.5"
  display_name = "SQL Server Availability Database"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGVjYjRmYTk5LWM2NGYtNTU2Yi1iMjAyLThiYzFhZjNkOWM3Nr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "database"
      id_pattern            = "sql_server_availability_database_{device}_{availability.group.id}_{availability.replica.id}_{availability.database.id}"
      instance_name_pattern = "{availability.database.name} (group: {availability.group.name})"
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
          display_name = "Database name"
          key          = "ad_name"
          pattern      = "{availability.database.name}"
        }
        attribute {
          display_name = "Database ID"
          key          = "ad_id"
          pattern      = "{availability.database.id}"
        }
        attribute {
          display_name = "Database state"
          key          = "ad_state"
          pattern      = "{availability.database.state}"
        }
        attribute {
          display_name = "Synchronization state"
          key          = "ad_sync_state"
          pattern      = "{availability.database.synchronization_state}"
        }
        attribute {
          display_name = "Synchronization health"
          key          = "ad_sync_health"
          pattern      = "{availability.database.synchronization_health}"
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
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.database.name"
        }
        required_dimension {
          key = "availability.database.id"
        }
        required_dimension {
          key = "availability.database.state"
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
    rule {
      icon_pattern          = "database"
      id_pattern            = "sql_server_availability_database_{device}_{availability.group.id}_{availability.replica.id}_{availability.database.id}"
      instance_name_pattern = "{availability.database.name} (group: {availability.group.name})"
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
          display_name = "Database name"
          key          = "ad_name"
          pattern      = "{availability.database.name}"
        }
        attribute {
          display_name = "Database ID"
          key          = "ad_id"
          pattern      = "{availability.database.id}"
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
          key = "availability.replica.name"
        }
        required_dimension {
          key = "availability.replica.id"
        }
        required_dimension {
          key = "availability.database.name"
        }
        required_dimension {
          key = "availability.database.id"
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
