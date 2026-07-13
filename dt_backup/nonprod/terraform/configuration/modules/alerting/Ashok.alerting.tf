resource "dynatrace_alerting" "Ashok" {
  name = "Ashok"
  rules {
    rule {
      delay_in_minutes = 10
      include_mode     = "INCLUDE_ANY"
      severity_level   = "AVAILABILITY"
      tags             = [ "pcf.organization_name:3537805" ]
    }
    rule {
      delay_in_minutes = 0
      include_mode     = "INCLUDE_ANY"
      severity_level   = "CUSTOM_ALERT"
      tags             = [ "pcf.organization_name:3537805" ]
    }
    rule {
      delay_in_minutes = 0
      include_mode     = "INCLUDE_ANY"
      severity_level   = "ERRORS"
      tags             = [ "pcf.organization_name:3537805" ]
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "INCLUDE_ANY"
      severity_level   = "PERFORMANCE"
      tags             = [ "pcf.organization_name:3537805" ]
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "INCLUDE_ANY"
      severity_level   = "RESOURCE_CONTENTION"
      tags             = [ "pcf.organization_name:3537805" ]
    }
  }
}
