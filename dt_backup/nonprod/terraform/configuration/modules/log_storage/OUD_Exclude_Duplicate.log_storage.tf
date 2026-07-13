resource "dynatrace_log_storage" "OUD_Exclude_Duplicate" {
  name            = "OUD Exclude Duplicate"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEE0NjIyOThDM0ZENDBGNEEAJGRmOTc0Nzc2LTI5YTItMzM1YS1hYzg0LTczYjlhZWE2YTA0N77vVN4V2t6t"
  scope           = "HOST_GROUP-528389A34A9FD838"
  send_to_storage = false
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/fedex/ldap/oudinst/logs/access.log", "/var/fedex/ldap/oudinst/logs/admin.log", "/var/fedex/ldap/oudinst/logs/errors.log" ]
    }
  }
}
