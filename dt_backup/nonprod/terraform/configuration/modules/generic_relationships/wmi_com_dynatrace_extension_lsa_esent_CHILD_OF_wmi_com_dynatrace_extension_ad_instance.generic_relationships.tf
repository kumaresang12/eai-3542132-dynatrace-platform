resource "dynatrace_generic_relationships" "wmi_com_dynatrace_extension_lsa_esent_CHILD_OF_wmi_com_dynatrace_extension_ad_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.active-directory-python-unabridged 6.1.1"
  from_type        = "wmi:com_dynatrace_extension_lsa_esent"
  to_type          = "wmi:com_dynatrace_extension_ad_instance"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(active-directory)"
      source_type = "Metrics"
    }
  }
}
