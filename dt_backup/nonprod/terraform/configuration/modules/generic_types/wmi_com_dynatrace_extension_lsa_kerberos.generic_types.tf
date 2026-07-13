resource "dynatrace_generic_types" "wmi_com_dynatrace_extension_lsa_kerberos" {
  name         = "wmi:com_dynatrace_extension_lsa_kerberos"
  enabled      = true
  created_by   = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  display_name = "Local Security Authority Kerberos"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDUwZTdhNjNiLWNjMWQtNTJiZi1hNmY4LTkzMzRlNTRhN2FkN77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "wmi_lsass_kerberos_{host.name}"
      instance_name_pattern = "Local Security Authority Kerberos on {host.name}"
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
          condition   = "$eq(active-directory.replication.partner.count.total)"
          source_type = "Metrics"
        }
      }
    }
  }
}
