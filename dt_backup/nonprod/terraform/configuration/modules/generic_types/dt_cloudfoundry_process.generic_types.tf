resource "dynatrace_generic_types" "dt_cloudfoundry_process" {
  name         = "dt:cloudfoundry_process"
  enabled      = true
  created_by   = "com.dynatrace.extension.cloudfoundry 1.0.0"
  display_name = "Cloud Foundry Process"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGU4YjAzMDNhLWUwNWYtNTYxYS05NzBiLTBjZWY4NzkzOGZkM77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cloud-foundry"
      id_pattern            = "cf_process_{guid}"
      instance_name_pattern = "{guid}"
      role                  = "default"
      attributes {
        attribute {
          key     = "connection_name"
          pattern = "{config.connection}"
        }
        attribute {
          key     = "foundation_name"
          pattern = "{foundation.name}"
        }
        attribute {
          key     = "guid"
          pattern = "{guid}"
        }
        attribute {
          key     = "created_at"
          pattern = "{created_at}"
        }
        attribute {
          key     = "updated_at"
          pattern = "{updated_at}"
        }
        attribute {
          key     = "version"
          pattern = "{version}"
        }
        attribute {
          key     = "type"
          pattern = "{type}"
        }
        attribute {
          key     = "user"
          pattern = "{user}"
        }
        attribute {
          key     = "app_guid"
          pattern = "{app.guid}"
        }
        attribute {
          key     = "revision_guid"
          pattern = "{arevision.guid}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
        attribute {
          key     = "extension_name"
          pattern = "{dt.extension.name}"
        }
        attribute {
          display_name = "Monitoring mode"
          key          = "devMonitoringMode"
          pattern      = "Extension"
        }
      }
      required_dimensions {
        required_dimension {
          key = "guid"
        }
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(com.dynatrace.extension.cloudfoundry)"
        }
        required_dimension {
          key           = "api.resource"
          value_pattern = "$eq(processes)"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudfoundry.processes)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
