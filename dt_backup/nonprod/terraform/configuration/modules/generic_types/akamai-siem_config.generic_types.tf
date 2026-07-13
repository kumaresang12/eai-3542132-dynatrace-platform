resource "dynatrace_generic_types" "akamai-siem_config" {
  name         = "akamai-siem:config"
  enabled      = true
  created_by   = "com.dynatrace.extension.akamai-siem 2.0.0"
  display_name = "Akamai SIEM Configuration"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDAzMGFkNGQyLTFlZDgtMzM0Yy1iM2QzLTkyYTA4MWVmNDJiZb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "akamai"
      id_pattern            = "akamai_siem_{dt.extension.config.id}"
      instance_name_pattern = "Akamai SIEM ({extension.config.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "extension.config.name"
        }
        required_dimension {
          key = "dt.extension.config.id"
        }
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(com.dynatrace.extension.akamai-siem)"
        }
      }
      sources {
        source {
          condition   = "$prefix(log.akamai-siem.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "akamai"
      id_pattern            = "akamai_siem_{dt.extension.config.id}"
      instance_name_pattern = "Akamai SIEM ({extension.config.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Extension config name"
          key          = "extensionConfigName"
          pattern      = "{extension.config.name}"
        }
        attribute {
          display_name = "Extension config ID"
          key          = "extensionConfigId"
          pattern      = "{dt.extension.config.id}"
        }
        attribute {
          display_name = "Akamai config IDs"
          key          = "akamaiConfigIds"
          pattern      = "{akamai.config.ids}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "extension.config.name"
        }
        required_dimension {
          key = "dt.extension.config.id"
        }
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(com.dynatrace.extension.akamai-siem)"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern = "akamai_siem_{extension.config.id}"
      required_dimensions {
        required_dimension {
          key           = "extension.config.id"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(sfm.akamai-siem.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
