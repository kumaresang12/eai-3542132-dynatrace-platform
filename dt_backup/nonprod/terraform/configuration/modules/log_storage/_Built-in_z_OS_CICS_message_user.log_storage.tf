resource "dynatrace_log_storage" "_Built-in_z_OS_CICS_message_user" {
  name            = "[Built-in] z/OS CICS message user"
  enabled         = false
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACRlZWFhMzk5ZS04M2FjLTExZWUtYjk2Mi0wMjQyYWMxMjAwMDK-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "z/OS CICS message user" ]
    }
    matcher {
      attribute = "loglevel"
      operator  = "MATCHES"
      values    = [ "ERROR", "WARN" ]
    }
  }
}
