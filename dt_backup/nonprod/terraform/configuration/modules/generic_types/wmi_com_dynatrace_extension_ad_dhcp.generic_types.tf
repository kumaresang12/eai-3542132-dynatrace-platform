resource "dynatrace_generic_types" "wmi_com_dynatrace_extension_ad_dhcp" {
  name         = "wmi:com_dynatrace_extension_ad_dhcp"
  enabled      = true
  created_by   = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  display_name = "Active Directory DHCP"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDE1YWEyZDQxLWM3NGQtNWU5Yi1iM2E0LTk2Y2E0Y2E4NDdmMr7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "wmi_ad_dhcp_{host.name}"
      instance_name_pattern = "Active Directory DHCP on {host.name}"
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
          condition   = "$prefix(active-directory.dhcp)"
          source_type = "Metrics"
        }
      }
    }
  }
}
