resource "dynatrace_generic_types" "forgerock_identity_cloud_tenant" {
  name         = "forgerock:identity_cloud_tenant"
  enabled      = true
  created_by   = "com.dynatrace.extension.forgerock-identity-cloud 1.0.14"
  display_name = "Identity Cloud Tenant"
  rules {
    rule {
      icon_pattern          = "resetpassword"
      id_pattern            = "forgerock_identity_cloud_{forgerock_tenant}"
      instance_name_pattern = "Identity Cloud - {forgerock_tenant}"
      role                  = "default"
      attributes {
        attribute {
          key     = "forgerock_tenant"
          pattern = "{forgerock_tenant}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "forgerock_tenant"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(idm_)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(am_)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(forgerock_identity_cloud)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "resetpassword"
      id_pattern            = "forgerock_identity_cloud_{forgerock.env}"
      instance_name_pattern = "Identity Cloud - {forgerock.env}"
      attributes {
        attribute {
          key     = "forgerock_tenant"
          pattern = "{forgerock.env}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "forgerock.env"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
