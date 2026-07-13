resource "dynatrace_generic_types" "sql_sql_server_database" {
  name         = "sql:sql_server_database"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-server 2.11.5"
  display_name = "SQL Server Database"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDI3ZjJhZTU5LWM3ODMtNThmZS1iZWVmLWUxZWUwYzY3ZDM3OL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "azure-sql-servers"
      id_pattern            = "sql_server_database_{device}_{server}_{instance}_{database}"
      instance_name_pattern = "{database} on {server} (instance: {instance})"
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
          display_name = "Database Name"
          key          = "database"
          pattern      = "{database}"
        }
        attribute {
          display_name = "State"
          key          = "db_state"
          pattern      = "{database.state}"
        }
        attribute {
          display_name = "Recovery model"
          key          = "db_recovery_model"
          pattern      = "{database.recovery_model}"
        }
        attribute {
          display_name = "User access mode"
          key          = "db_user_access"
          pattern      = "{database.user_access}"
        }
        attribute {
          display_name = "Updateability"
          key          = "db_updateability"
          pattern      = "{database.updateability}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "instance"
        }
        required_dimension {
          key = "server"
        }
        required_dimension {
          key = "database"
        }
        required_dimension {
          key = "database.state"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(sql-server.databases.state)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "azure-sql-servers"
      id_pattern            = "sql_server_database_{device}_{server}_{instance}_{database}"
      instance_name_pattern = "{database} on {server} (instance: {instance})"
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
          display_name = "Database Name"
          key          = "database"
          pattern      = "{database}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "instance"
        }
        required_dimension {
          key = "server"
        }
        required_dimension {
          key = "database"
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
