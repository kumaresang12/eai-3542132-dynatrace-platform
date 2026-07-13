resource "dynatrace_generic_types" "sql_db2_tablespace" {
  name         = "sql:db2_tablespace"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-db2 2.5.0"
  display_name = "DB2 Tablespace"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDEzOTJkNDgwLTVlMjEtNTEyOC1hMmMxLTY1OGEzMDhiZWY2Y77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_tablespace_{device}_{tbsp_id}_{member}"
      instance_name_pattern = "{tbsp_name} ({alias} member {member})"
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
          display_name = "Name"
          key          = "Name"
          pattern      = "{tbsp_name}"
        }
        attribute {
          display_name = "ID"
          key          = "TableSpaceID"
          pattern      = "{tbsp_id}"
        }
        attribute {
          display_name = "Auto-resize enabled"
          key          = "AutoResizeEnabled"
          pattern      = "{tbsp_auto_resize_enabled}"
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
          key = "tbsp_id"
        }
        required_dimension {
          key           = "tbsp_name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(db2.tbsp)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_tablespace_{device}_{tbsp_id}_{member}"
      instance_name_pattern = "{tbsp_name} ({device} {instance_name} member {member})"
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
          display_name = "Name"
          key          = "Name"
          pattern      = "{tbsp_name}"
        }
        attribute {
          display_name = "ID"
          key          = "TableSpaceID"
          pattern      = "{tbsp_id}"
        }
        attribute {
          display_name = "Auto-resize enabled"
          key          = "AutoResizeEnabled"
          pattern      = "{tbsp_auto_resize_enabled}"
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
          key = "tbsp_id"
        }
        required_dimension {
          key           = "instance_name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "tbsp_name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(db2.tbsp)"
          source_type = "Metrics"
        }
      }
    }
  }
}
