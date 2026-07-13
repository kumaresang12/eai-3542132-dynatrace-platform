resource "dynatrace_generic_types" "sql_db2_instance" {
  name         = "sql:db2_instance"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-db2 2.5.0"
  display_name = "DB2 Database Instance"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGFhYTEyOGIzLTc1NWEtNWY4MS05YTNiLTkzZDU5ZDcxN2M5Ob7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_instance_{device}"
      instance_name_pattern = "{alias}"
      attributes {
        attribute {
          display_name = "Alias"
          key          = "Alias"
          pattern      = "{alias}"
        }
        attribute {
          display_name = "Device url"
          key          = "Device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Instance name"
          key          = "Instance"
          pattern      = "{instance_name}"
        }
        attribute {
          display_name = "Service level"
          key          = "ServiceLevel"
          pattern      = "{service_level}"
        }
        attribute {
          display_name = "HADR role"
          key          = "HADRRole"
          pattern      = "{hadr_role}"
        }
        attribute {
          display_name = "HADR sync mode"
          key          = "HADRSyncMode"
          pattern      = "{hadr_syncmode}"
        }
        attribute {
          display_name = "HADR flags"
          key          = "HADRFlags"
          pattern      = "{hadr_flags}"
        }
        attribute {
          display_name = "HADR primary member host"
          key          = "HADRPrimaryHost"
          pattern      = "{primary_member_host}"
        }
        attribute {
          display_name = "HADR primary instance"
          key          = "HADRPrimaryInstance"
          pattern      = "{primary_instance}"
        }
        attribute {
          display_name = "HADR standby member host"
          key          = "HADRStandbyHost"
          pattern      = "{standby_member_host}"
        }
        attribute {
          display_name = "HADR standby instance"
          key          = "HADRStandbyInstance"
          pattern      = "{standby_instance}"
        }
        attribute {
          display_name = "HADR timeout (seconds)"
          key          = "HADRTimeout"
          pattern      = "{hadr_timeout}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{device.port}"
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
          key = "device"
        }
        required_dimension {
          key = "service_level"
        }
        required_dimension {
          key = "instance_name"
        }
        required_dimension {
          key = "hadr_role"
        }
      }
      sources {
        source {
          condition   = "$prefix(db2.hadr)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_instance_{device}"
      instance_name_pattern = "{alias}"
      attributes {
        attribute {
          display_name = "Alias"
          key          = "Alias"
          pattern      = "{alias}"
        }
        attribute {
          display_name = "Device url"
          key          = "Device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Instance name"
          key          = "Instance"
          pattern      = "{instance_name}"
        }
        attribute {
          display_name = "Service level"
          key          = "ServiceLevel"
          pattern      = "{service_level}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{device.port}"
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
          key = "device"
        }
        required_dimension {
          key = "service_level"
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
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_instance_{device}"
      instance_name_pattern = "{alias}"
      attributes {
        attribute {
          display_name = "Alias"
          key          = "Alias"
          pattern      = "{alias}"
        }
        attribute {
          display_name = "Device url"
          key          = "Device"
          pattern      = "{device}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{device.port}"
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
          key = "device"
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
      id_pattern            = "db2_instance_{device}"
      instance_name_pattern = "{device} ({instance_name})"
      attributes {
        attribute {
          display_name = "Device url"
          key          = "Device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Instance name"
          key          = "Instance"
          pattern      = "{instance_name}"
        }
        attribute {
          display_name = "Service level"
          key          = "ServiceLevel"
          pattern      = "{service_level}"
        }
        attribute {
          display_name = "HADR role"
          key          = "HADRRole"
          pattern      = "{hadr_role}"
        }
        attribute {
          display_name = "HADR sync mode"
          key          = "HADRSyncMode"
          pattern      = "{hadr_syncmode}"
        }
        attribute {
          display_name = "HADR flags"
          key          = "HADRFlags"
          pattern      = "{hadr_flags}"
        }
        attribute {
          display_name = "HADR primary member host"
          key          = "HADRPrimaryHost"
          pattern      = "{primary_member_host}"
        }
        attribute {
          display_name = "HADR primary instance"
          key          = "HADRPrimaryInstance"
          pattern      = "{primary_instance}"
        }
        attribute {
          display_name = "HADR standby member host"
          key          = "HADRStandbyHost"
          pattern      = "{standby_member_host}"
        }
        attribute {
          display_name = "HADR standby instance"
          key          = "HADRStandbyInstance"
          pattern      = "{standby_instance}"
        }
        attribute {
          display_name = "HADR timeout (seconds)"
          key          = "HADRTimeout"
          pattern      = "{hadr_timeout}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{device.port}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "device"
        }
        required_dimension {
          key = "service_level"
        }
        required_dimension {
          key = "instance_name"
        }
        required_dimension {
          key = "hadr_role"
        }
      }
      sources {
        source {
          condition   = "$prefix(db2.hadr)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_instance_{device}"
      instance_name_pattern = "{device} ({instance_name})"
      attributes {
        attribute {
          display_name = "Device url"
          key          = "Device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Instance name"
          key          = "Instance"
          pattern      = "{instance_name}"
        }
        attribute {
          display_name = "Service level"
          key          = "ServiceLevel"
          pattern      = "{service_level}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{device.port}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "device"
        }
        required_dimension {
          key = "service_level"
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
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "ibm-db2"
      id_pattern            = "db2_instance_{device}"
      instance_name_pattern = "{device}"
      attributes {
        attribute {
          display_name = "Device url"
          key          = "Device"
          pattern      = "{device}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{device.port}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "device"
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
