resource "dynatrace_openpipeline_v2_logs_ingestsources" "Akamai_SIEM" {
  enabled      = true
  display_name = "Akamai SIEM"
  source       = "extension:com.dynatrace.extension.akamai-siem"
  source_type  = "extension"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.akamai-siem"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.0"
    }
  }
  static_routing {
    pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGIyM2Q2Y2UyLTMxMGUtMzY4Yi04MTk2LTFiMDk5NGM4YjUxN77vVN4V2t6t"
    pipeline_type = "custom"
  }
}
