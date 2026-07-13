resource "dynatrace_generic_types" "wmi_com_dynatrace_extension_ad_domain" {
  name         = "wmi:com_dynatrace_extension_ad_domain"
  enabled      = true
  created_by   = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  display_name = "Active Directory Domain"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGI4YWIzOGMyLTM5YmYtNTAwZS1iODM1LTliNzRiZDAwMDFmMb7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "wmi_ad_{domain}"
      instance_name_pattern = "Active Directory Domain {domain}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Domain Name"
          key          = "domain_name"
          pattern      = "{domain}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "domain"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(active-directory)"
          source_type = "Metrics"
        }
      }
    }
  }
}
