# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "STAGING_PROMETHEUS_API_SECRET" {
  name                       = "STAGING_PROMETHEUS_API_SECRET"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
