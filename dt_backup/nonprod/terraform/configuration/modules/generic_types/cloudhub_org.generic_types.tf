resource "dynatrace_generic_types" "cloudhub_org" {
  name         = "cloudhub:org"
  enabled      = true
  created_by   = "com.dynatrace.mulesoft-cloudhub 2.2.6"
  display_name = "Mulesoft Organization"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDc1ZTY2OWM4LTEzNGItNTRjYi1hYmUzLWZlZTM5YmFlZDgyYr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "city"
      id_pattern            = "cloudhub:org_{org.id}"
      instance_name_pattern = "{org.name}"
      attributes {
        attribute {
          display_name = "ID"
          key          = "org_id"
          pattern      = "{org.id}"
        }
        attribute {
          display_name = "Name"
          key          = "org_name"
          pattern      = "{org.name}"
        }
        attribute {
          display_name = "Owner ID"
          key          = "org_owner_id"
          pattern      = "{org.owner_id}"
        }
        attribute {
          display_name = "Type"
          key          = "org_type"
          pattern      = "{org.type}"
        }
        attribute {
          display_name = "Is Root"
          key          = "org_is_root"
          pattern      = "{org.is_root}"
        }
        attribute {
          display_name = "Master"
          key          = "org_is_master"
          pattern      = "{org.is_master}"
        }
        attribute {
          display_name = "MFA Required"
          key          = "org_mfa_required"
          pattern      = "{org.mfa_required}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "org.type"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudhub.org.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "city"
      id_pattern            = "cloudhub:org_{org.id}"
      instance_name_pattern = "{org.name}"
      attributes {
        attribute {
          display_name = "ID"
          key          = "org_id"
          pattern      = "{org.id}"
        }
        attribute {
          display_name = "Name"
          key          = "org_name"
          pattern      = "{org.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudhub.env.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cloudhub.app.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cloudhub.api.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cloudhub.vpn.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
