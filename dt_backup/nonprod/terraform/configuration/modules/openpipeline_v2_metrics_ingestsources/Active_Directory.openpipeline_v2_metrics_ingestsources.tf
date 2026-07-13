resource "dynatrace_openpipeline_v2_metrics_ingestsources" "Active_Directory" {
  enabled      = true
  display_name = "Active Directory"
  source       = "com.dynatrace.extension.active-directory-python-unabridged"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.active-directory-python-unabridged"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "6.1.1"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDI1NDA4ODFiLWZhZGItM2RlOS1hZDFkLTg0YWVhYmNjMDI5Yr7vVN4V2t6t"
    pipeline_type = "custom"
  }
}
