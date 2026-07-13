resource "dynatrace_generic_types" "dt_cloudfoundry_route" {
  name         = "dt:cloudfoundry_route"
  enabled      = true
  created_by   = "com.dynatrace.extension.cloudfoundry 1.0.0"
  display_name = "Cloud Foundry Route"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDYwM2IyMGNlLWU1Y2QtNWRkZC05OWIwLTYxZTVhMmRjY2Y2Nb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cloud-foundry"
      id_pattern            = "cf_route_{guid}"
      instance_name_pattern = "{host}"
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
          key     = "protocol"
          pattern = "{protocol}"
        }
        attribute {
          key     = "host"
          pattern = "{host}"
        }
        attribute {
          key     = "path"
          pattern = "{path}"
        }
        attribute {
          key     = "port"
          pattern = "{port}"
        }
        attribute {
          key     = "url"
          pattern = "{url}"
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
          key = "host"
        }
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(com.dynatrace.extension.cloudfoundry)"
        }
        required_dimension {
          key           = "api.resource"
          value_pattern = "$eq(routes)"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudfoundry.routes)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
