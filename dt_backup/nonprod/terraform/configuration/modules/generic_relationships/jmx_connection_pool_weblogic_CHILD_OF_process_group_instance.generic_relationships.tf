resource "dynatrace_generic_relationships" "jmx_connection_pool_weblogic_CHILD_OF_process_group_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.jmx-weblogic-cp 2.1.1"
  from_type        = "jmx:connection_pool_weblogic"
  to_type          = "process_group_instance"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(weblogic.connectionPool)"
      source_type = "Metrics"
    }
  }
}
