resource "dynatrace_generic_types" "wmi_com_dynatrace_extension_lsa_ntlm" {
  name         = "wmi:com_dynatrace_extension_lsa_ntlm"
  enabled      = true
  created_by   = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  display_name = "Local Security Authority NTLM"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGEyMGEyNTlmLTU4MTAtNTRlYy1iMWM5LTg0YzA3YWQzMDY0Ob7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "wmi_lsass_ntlm_{host.name}"
      instance_name_pattern = "Local Security Authority NTLM on {host.name}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "wmi_lsass_ntlm_name"
          pattern      = "{ntlm.server.name}"
        }
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
          condition   = "$prefix(active-directory.lsass.server.ntlm)"
          source_type = "Metrics"
        }
      }
    }
  }
}
