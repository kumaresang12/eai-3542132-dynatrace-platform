resource "dynatrace_generic_types" "jmx_connection_pool_weblogic" {
  name         = "jmx:connection_pool_weblogic"
  enabled      = true
  created_by   = "com.dynatrace.extension.jmx-weblogic-cp 2.1.1"
  display_name = "Weblogic Connection Pool"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDAyZGM2Zjc2LTc0YjktNTA0ZC1iYWZjLTg0ZmM0ODEwNDcxMb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "oracleweblogic"
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
          condition   = "$prefix(weblogic.connectionPool.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
