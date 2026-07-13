resource "dynatrace_generic_types" "wmi_com_dynatrace_extension_ad_db" {
  name         = "wmi:com_dynatrace_extension_ad_db"
  enabled      = true
  created_by   = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  display_name = "Active Directory Database"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDNhNDNhM2U1LWY4YmItNWE2YS05ZmIxLWM3M2Q0MWExOWVlZb7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "wmi_ad_db_{host.name}"
      instance_name_pattern = "Active Directory DB on {host.name}"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "host.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(active-directory.database)"
          source_type = "Metrics"
        }
      }
    }
  }
}
