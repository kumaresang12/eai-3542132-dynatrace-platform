resource "dynatrace_generic_types" "sql_sql_server_agent" {
  name         = "sql:sql_server_agent"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-server 2.11.5"
  display_name = "SQL Server Agent"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGQ2YWJkYWVhLTIyMzQtNWM0MC1hMGJhLTkxZWIyMzY0NDEyML7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "agent"
      id_pattern            = "sql_server_agent_{service_name}_{instance}"
      instance_name_pattern = "{service_name} on {instance}"
      attributes {
        attribute {
          display_name = "Instance Name"
          key          = "instance"
          pattern      = "{instance}"
        }
        attribute {
          display_name = "Service Name"
          key          = "service_name"
          pattern      = "{service_name}"
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
          key = "service_name"
        }
      }
      sources {
        source {
          condition   = "$eq(sql-server.agent.status)"
          source_type = "Metrics"
        }
      }
    }
  }
}
