# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "PROMETHEUS_API_KEY" {
  name                       = "PROMETHEUS_API_KEY"
  allow_contextless_requests = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
