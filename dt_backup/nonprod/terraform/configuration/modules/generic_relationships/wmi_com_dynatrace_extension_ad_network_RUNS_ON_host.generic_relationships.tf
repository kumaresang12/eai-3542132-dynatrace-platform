resource "dynatrace_generic_relationships" "wmi_com_dynatrace_extension_ad_network_RUNS_ON_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  from_type        = "wmi:com_dynatrace_extension_ad_network"
  to_type          = "host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(active-directory)"
      source_type = "Metrics"
    }
  }
}
