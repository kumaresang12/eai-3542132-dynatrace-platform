resource "dynatrace_generic_types" "dt_cloudfoundry_build" {
  name         = "dt:cloudfoundry_build"
  enabled      = true
  created_by   = "com.dynatrace.extension.cloudfoundry 1.0.0"
  display_name = "Cloud Foundry build"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDc3ZGVjYzk2LWQzM2QtNWQyZi1hNTQ2LTA1OTI1NjY4ODNlMr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cloud-foundry"
      id_pattern            = "cf_build_{guid}"
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
          key     = "name"
          pattern = "{name}"
        }
        attribute {
          key     = "lifecycle_type"
          pattern = "{lifecycle.type}"
        }
        attribute {
          key     = "lifecyle_stack"
          pattern = "{lifecyle.stack}"
        }
        attribute {
          key     = "package_guid"
          pattern = "{package.guid}"
        }
        attribute {
          key     = "droplet_guid"
          pattern = "{droplet.guid}"
        }
        attribute {
          key     = "created_by_name"
          pattern = "{created_by.name}"
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
          value_pattern = "$eq(builds)"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudfoundry.builds)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
