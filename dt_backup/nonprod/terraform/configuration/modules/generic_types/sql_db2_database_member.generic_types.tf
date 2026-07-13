resource "dynatrace_generic_types" "sql_db2_database_member" {
  name         = "sql:db2_database_member"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-db2 2.5.0"
  display_name = "DB2 Database Member"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDk4MTk1NTVlLTYzM2YtNWYxMi1iZDIyLTVlNzMzMWIyYzI5Nb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_member_{device}_{member}"
      instance_name_pattern = "{alias} (member {member})"
      attributes {
        attribute {
          display_name = "Instance alias"
          key          = "InstanceAlias"
          pattern      = "{alias}"
        }
        attribute {
          display_name = "Device url"
          key          = "Device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Member"
          key          = "Member"
          pattern      = "{member}"
        }
        attribute {
          display_name = "Instance name"
          key          = "Instance"
          pattern      = "{instance_name}"
        }
        attribute {
          display_name = "ServiceLevel"
          key          = "ServiceLevel"
          pattern      = "{service_level}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "alias"
        }
        required_dimension {
          key = "member"
        }
        required_dimension {
          key = "device"
        }
        required_dimension {
          key = "instance_name"
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
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_member_{device}_{member}"
      instance_name_pattern = "{device} ({instance_name} member {member})"
      attributes {
        attribute {
          display_name = "Device url"
          key          = "Device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Member"
          key          = "Member"
          pattern      = "{member}"
        }
        attribute {
          display_name = "Instance name"
          key          = "Instance"
          pattern      = "{instance_name}"
        }
        attribute {
          display_name = "ServiceLevel"
          key          = "ServiceLevel"
          pattern      = "{service_level}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "member"
        }
        required_dimension {
          key = "device"
        }
        required_dimension {
          key = "instance_name"
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
