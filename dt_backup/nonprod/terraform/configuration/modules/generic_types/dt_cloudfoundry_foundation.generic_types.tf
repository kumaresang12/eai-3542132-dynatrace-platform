resource "dynatrace_generic_types" "dt_cloudfoundry_foundation" {
  name         = "dt:cloudfoundry_foundation"
  enabled      = true
  created_by   = "com.dynatrace.extension.cloudfoundry 1.0.0"
  display_name = "Cloud Foundry Foundation"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDFmYjEwNzQwLTY0ZmEtNTM5My04ZDhiLTBjYTRjZjYwYzgwZL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cloud-foundry"
      id_pattern            = "cf_foundation_{config.url}"
      instance_name_pattern = "{config.connection}"
      role                  = "default"
      attributes {
        attribute {
          key     = "api_url"
          pattern = "{config.url}"
        }
        attribute {
          key     = "connection_name"
          pattern = "{config.connection}"
        }
        attribute {
          key     = "config_id"
          pattern = "{config.id}"
        }
        attribute {
          key     = "foundation_name"
          pattern = "{foundation.name}"
        }
        attribute {
          key     = "build"
          pattern = "{foundation.build}"
        }
        attribute {
          key     = "api_version"
          pattern = "{foundation.api_version}"
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
          key = "config.url"
        }
        required_dimension {
          key = "config.connection"
        }
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(com.dynatrace.extension.cloudfoundry)"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudfoundry)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
