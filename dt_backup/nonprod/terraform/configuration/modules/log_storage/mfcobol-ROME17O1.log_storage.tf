resource "dynatrace_log_storage" "mfcobol-ROME17O1" {
  name            = "mfcobol-ROME17O1"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDUyODM4OUEzNEE5RkQ4MzgAJDMwYmU0MTNkLWI4ZmYtM2M1Yi1iNWRlLTEwMDJjZDI5YTdlOL7vVN4V2t6t"
  scope           = "HOST_GROUP-69FC3B60E0407DCF"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/mfcobol/es/ROME17O1/log*.html" ]
    }
  }
}
