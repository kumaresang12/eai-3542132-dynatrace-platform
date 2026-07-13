resource "dynatrace_process_availability" "PCF_ISPI_Test" {
  name              = "PCF ISPI Test"
  enabled           = false
  insert_after      = ""
  minimum_processes = 5
  operating_system  = [ "WINDOWS", "LINUX", "AIX" ]
  scope             = "environment"
  metadata {
    item {
      key   = "pcf.organization_name"
      value = "7209"
    }
  }
  rules {
    rule {
      condition = "$contains(/home/vcap/app/.java-buildpack/open_jdk_jre/bin/java)"
      property  = "executable"
      rule_type = "RuleTypeProcess"
    }
  }
}
