resource "dynatrace_log_storage" "Exclude_Logs" {
  name            = "Exclude Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MAEktVQkVSTkVURVNfQ0xVU1RFUgAQOEY3MTk2NTc0RjY5NEU2NQAkOTM4M2QxODgtNjdhNS0zYjY3LThhMDAtNmI4MDkyYjI3MmJivu9U3hXa3q0"
  scope           = "environment"
  send_to_storage = false
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/log/salt/minion", "Journald", "/opt/illumio_ven_data/etc/.agentlogmgr/vtapflow.log.que/vtapflow.log.#.aa.gz", "/opt/illumio_ven_data/*/*.*", "/var/splunkforwarder/*/*/*.*", "/opt/Tanium/*/*/*.*", "/var/log/cohesity/*", "/var/log/cohesity/linux_agent_exec.#.test.cloud.fedex.com.root.log.ERROR.#-#", "/var/log/cohesity/linux_agent_exec.#.test.cloud.fedex.com.root.log.INFO.#-#", "/var/log/cohesity/linux_agent_exec.#.test.cloud.fedex.com.root.log.WARNING.#-#", "/var/log/cohesity/linux_agent_exec.log.STDOUTERR", "/var/log/cohesity/linux_agent_exec.parent.#.test.cloud.fedex.com.root.log.INFO.#-#", "/var/log/cohesity/linux_agent_exec.parent.u#.test.cloud.fedex.com.root.log.INFO.#-#", "/var/log/cohesity/linux_agent_exec.u#.test.cloud.fedex.com.root.log.ERROR.#-#", "/var/log/cohesity/linux_agent_exec.u#.test.cloud.fedex.com.root.log.INFO.#-#", "/var/log/cohesity/linux_agent_exec.u#.test.cloud.fedex.com.root.log.WARNING.#-#", "/var/fedex/appd/*" ]
    }
  }
}
