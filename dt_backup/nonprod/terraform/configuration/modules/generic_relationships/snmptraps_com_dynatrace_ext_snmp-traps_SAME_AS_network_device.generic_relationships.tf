resource "dynatrace_generic_relationships" "snmptraps_com_dynatrace_ext_snmp-traps_SAME_AS_network_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-traps-generic 2.1.1"
  from_type        = "snmptraps:com_dynatrace_ext_snmp-traps"
  to_type          = "network:device"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "To lower case"
          source_property            = "dt.ip_addresses"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
