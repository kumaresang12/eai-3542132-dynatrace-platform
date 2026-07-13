resource "dynatrace_generic_relationships" "jmx_connection_pool_tomcat_CHILD_OF_process_group_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.jmx-tomcat-cp 2.2.4"
  from_type        = "jmx:connection_pool_tomcat"
  to_type          = "process_group_instance"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(tomcat.connectionPool)"
      source_type = "Metrics"
    }
  }
}
