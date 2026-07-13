resource "dynatrace_generic_types" "wmi_com_dynatrace_extension_ad_dns" {
  name         = "wmi:com_dynatrace_extension_ad_dns"
  enabled      = true
  created_by   = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  display_name = "Active Directory DNS"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDQ3ZGY4MmU2LWE1OWUtNTIyYy04MmIzLTgxZjE1ZjI3ZjE5N77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "wmi_ad_dns_{host.name}"
      instance_name_pattern = "Active Directory DNS on {host.name}"
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
          condition   = "$prefix(active-directory.dns)"
          source_type = "Metrics"
        }
      }
    }
  }
}
