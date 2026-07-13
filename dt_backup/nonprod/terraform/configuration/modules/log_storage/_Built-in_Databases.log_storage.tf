resource "dynatrace_log_storage" "_Built-in_Databases" {
  name            = "[Built-in] Databases"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACQzZDkxZjE0Ny01N2QyLTNkZGMtOGUwNS1jYmE3N2U2ZmRhNjK-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Microsoft SQL Server", "Oracle Database", "PostgreSQL", "MySQL", "SAP HanaDB" ]
    }
  }
}
