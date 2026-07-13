resource "dynatrace_generic_types" "dt_cloudfoundry_service_instance" {
  name         = "dt:cloudfoundry_service_instance"
  enabled      = true
  created_by   = "com.dynatrace.extension.cloudfoundry 1.0.0"
  display_name = "Cloud Foundry Service Instance"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDI2YTU0ODVjLTZjYjQtNTc4NC04MTAxLTIyYTM3NTE5Yzg5Zb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cloud-foundry"
      id_pattern            = "cf_service_instance_{guid}"
      instance_name_pattern = "{name}"
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
          key     = "name"
          pattern = "{name}"
        }
        attribute {
          key     = "last_operation_type"
          pattern = "{last_operation.type}"
        }
        attribute {
          key     = "type"
          pattern = "{type}"
        }
        attribute {
          key     = "space_guid"
          pattern = "{space.guid}"
        }
        attribute {
          key     = "domain_guid"
          pattern = "{domain.guid}"
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
          key = "name"
        }
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(com.dynatrace.extension.cloudfoundry)"
        }
        required_dimension {
          key           = "api.resource"
          value_pattern = "$eq(service_instances)"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudfoundry.service_instances)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
