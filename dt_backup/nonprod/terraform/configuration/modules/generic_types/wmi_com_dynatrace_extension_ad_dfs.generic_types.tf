resource "dynatrace_generic_types" "wmi_com_dynatrace_extension_ad_dfs" {
  name         = "wmi:com_dynatrace_extension_ad_dfs"
  enabled      = true
  created_by   = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  display_name = "Active Directory DFS"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDI0NzZlZDUxLTY0ZjgtNWZhMS04ZDUwLTNjN2Y1YTMwZjc0N77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "wmi_ad_dfs_{host.name}"
      instance_name_pattern = "Active Directory DFS {dfs.server.name} on {host.name}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "wmi_ad_dfs_name"
          pattern      = "{dfs.server.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "dfs.server.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "host.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(active-directory.dfs)"
          source_type = "Metrics"
        }
      }
    }
  }
}
