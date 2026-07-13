resource "dynatrace_management_zone_v2" "Mobile" {
  name        = "Mobile"
  description = "Mobile"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "MOBILE_APPLICATION"
        attribute_conditions {
          condition {
            key      = "MOBILE_APPLICATION_NAME"
            operator = "EXISTS"
          }
        }
      }
    }
  }
}
