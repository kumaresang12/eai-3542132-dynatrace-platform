resource "dynatrace_log_storage" "OUD_Logs" {
  name            = "OUD Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDUyODM4OUEzNEE5RkQ4MzgAJGQzMjI4OGUwLWEzMDQtMzQ0Zi04Mzc5LTBhYjNiOWZhMmI1Nb7vVN4V2t6t"
  scope           = "HOST_GROUP-528389A34A9FD838"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/fedex/ldap/oudinst/logs/access", "/var/fedex/ldap/oudinst/logs/admin", "/var/fedex/ldap/oudinst/logs/audit", "/var/fedex/ldap/oudinst/logs/errors", "/var/fedex/ldap/oudinst/logs/replication", "/var/fedex/ldap/oudinst/logs/replicationrejectedentries", "/var/fedex/ldap/oudinst/logs/server.out" ]
    }
  }
}
