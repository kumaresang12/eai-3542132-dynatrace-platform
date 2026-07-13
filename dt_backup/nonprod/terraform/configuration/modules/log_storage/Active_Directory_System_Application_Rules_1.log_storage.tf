resource "dynatrace_log_storage" "Active_Directory_System_Application_Rules_1" {
  name            = "Active Directory System & Application Rules"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJDVlYmIxY2FlLTIwMTYtM2I1ZS1hZjEwLTFkNzAyN2FmNWY5Mb7vVN4V2t6t"
  scope           = "HOST-A462298C3FD40F4A"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows System Log", "Security" ]
    }
  }
}
