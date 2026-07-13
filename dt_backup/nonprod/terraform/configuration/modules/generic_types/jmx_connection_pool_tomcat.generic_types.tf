resource "dynatrace_generic_types" "jmx_connection_pool_tomcat" {
  name         = "jmx:connection_pool_tomcat"
  enabled      = true
  created_by   = "com.dynatrace.extension.jmx-tomcat-cp 2.2.4"
  display_name = "Tomcat Connection Pool"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDg1NjBlZjJlLTc2ZTEtNTg1ZS04OTliLTA1MmE4NmQ5Yjg4Zr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "apache-tomcat"
      id_pattern            = "{name}-{dt.entity.host}-{dt.entity.process_group_instance}"
      instance_name_pattern = "{name} connection pool"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(tomcat.connectionPool.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
