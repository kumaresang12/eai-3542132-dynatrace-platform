resource "dynatrace_generic_types" "dt_cloudfoundry_package" {
  name         = "dt:cloudfoundry_package"
  enabled      = true
  created_by   = "com.dynatrace.extension.cloudfoundry 1.0.0"
  display_name = "Cloud Foundry Package"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGJkYTM1OGZjLWM2NmMtNWU3ZS04ZDFkLTQ5ODMxMTEyNjczZb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cloud-foundry"
      id_pattern            = "cf_package_{guid}"
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
          key     = "type"
          pattern = "{type}"
        }
        attribute {
          key     = "app_guid"
          pattern = "{app.guid}"
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
          value_pattern = "$eq(packages)"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudfoundry.packages)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
